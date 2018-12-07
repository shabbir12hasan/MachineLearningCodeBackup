import gym
import numpy as np
import sys
import time
from IPython.display import clear_output

from gym.envs.registration import register
register(
    id='FrozenLakeNotSlippery-v0',
    entry_point='gym.envs.toy_text:FrozenLakeEnv',
    kwargs={'map_name' : '4x4', 'is_slippery': False},
    max_episode_steps=100,
    reward_threshold=0.78, # optimum = .8196
)


env = gym.make('FrozenLakeNotSlippery-v0')
env.seed(30)
np.random.seed(1234)

#Initialize table with all zeros, this is our mapping from states to actions,
#  agent will learn rewards for each pair as it explores the world
#  each col is an action, each row is a state of the world. the values in this table are expected reward.
Q = np.zeros([env.observation_space.n, env.action_space.n])

# Set learning parameters
learning_rate = .8  # this is how quickly we overwrite existing values with recent learning/experiences
discount = .95 # this is the short vs long-term bias.
# if y (gamma) is small, then view is very short-term. if large, agent will have long-term .
num_episodes = 5000
num_iter = 2000


for i in range(num_episodes):

    state = env.reset()  # Reset environment and get first new observation

    for iter in range(num_iter):
        print(env.render())
        action = np.argmax(Q[state, :] + np.random.randn(1,4 ))
        print(env.step(action))
        # print(env.render())


        observed_state, reward, done, info = env.step(action)
        Q[state, action] = (1 - learning_rate) * Q[state, action] + learning_rate * (reward + discount* np.max(Q[observed_state, :]))
        # state = observed_state

        if done: break

    print(np.argmax(Q, axis=1))
    print(np.around(Q, 6))


