import gym
import numpy as np
import sys
import time
from IPython.display import clear_output


env = gym.make('FrozenLake-v0')
env.seed(0)
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
        action = np.argmax(Q[state, :] + np.random.randn(1, env.action_space.n) * (1. / (i + 1)))
        observed_state, reward, done, info = env.step(action)
        Q[state, action] = (1 - learning_rate) * Q[state, action] + learning_rate * (reward + discount* np.max(Q[observed_state, :]))
        state = observed_state




    rAll = 0  # initial value for rewards at all SxA situations, closer to one encourages exploring
    d = False
    step_ = 0
    rewards = []
    # The Q-Table learning algorithm
    while step_ < 99:
        step_ += 1

        # Choose an action by greedily (with noise) picking from Q table,
        # this distribution will converge to the true expected value in the long term as num episodes -> infinity :)
        env.render()



#reward is being 0 always


        # Using random noise
        # action = np.argmax(Q[state, :] + np.random.randn(1, env.action_space.n) / (i + 1))

        clear_output(wait=2)


        time.sleep(0.1)
        # Get new state and reward from environment
        observed_state, reward, done, info = env.step(action)
        rewards.append(reward)
        print('action = {}, location = {}, episode number: {}'.format(action_map[action], observed_state, i))
        # Update Q-Table with new knowledge
        Q[state, action] = Q[state, action] + lr * (reward + y * np.max(Q[observed_state, :]) - Q[state, action])
        # Q[state, action] = (1-lr)*Q[state, action] + lr*(reward+y*np.max(Q[observed_state, :]))
        rAll += reward

        state = observed_state

        if done == True:
            break

    # jList.append(j)
    rList.append(rAll)

print("Score over time: " + str(sum(rList) / num_episodes))
print("Final Q-Table Values:\n\n", Q)


