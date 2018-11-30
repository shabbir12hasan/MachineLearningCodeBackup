import gym
import numpy as np
import matplotlib.pyplot as plt
from gym.envs.registration import register

import time
from IPython.display import clear_output


register(
    id='FrozenLake-v3',
    entry_point='gym.envs.toy_text:FrozenLakeEnv',
    kwargs={'map_name': '4x4', 'is_slippery': False}
)
env = gym.make('FrozenLake-v3')

# Initialize table with all zeros
Q = np.zeros([env.observation_space.n, env.action_space.n])
# Set learning parameters
dis = .99 # discount factor
num_episodes = 2000

# create lists to contain total rewards and steps per episode
rList = []
for i in range(num_episodes):
    # Probability of E-greedy
    e = 1. / ((i // 100) + 1)

    # Reset environment and get first new observation
    state = env.reset()
    rAll = 0
    done = False

    # The Q-Table learning algorithm
    while not done:
        # Choose an action by E-greedy
        if np.random.rand(1) < e:
            action = env.action_space.sample()
        else:
            action = np.argmax(Q[state, :])

        """
        # Using random noise
        action = np.argmax(Q[state,:] + np.random.randn(1,env.action_space.n) / (i+1))
        """

        # Get new state and reward from environment
        new_state, reward, done, _ = env.step(action)

        clear_output(wait=2)
        env.render()
        time.sleep(0.1)

        # Update Q-Table with new knowledge using learning rate
        Q[state, action] = reward + dis * np.max(Q[new_state, :])

        rAll += reward
        state = new_state

    rList.append(rAll)

# Result reporting
print("Success rate: " + str(sum(rList) / num_episodes))
print("Sucess: " + str(sum(rList)))
print("Final Q-Table Values")
print("LEFT DOWN RIGHT UP")
print(Q)
plt.bar(range(len(rList)), rList, color="blue", edgecolor='none')
plt.show()
