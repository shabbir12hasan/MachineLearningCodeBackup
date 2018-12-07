import gym
# import deeprl_hw1.queue_envs as queue_env

def main():
    # create the environment
    env = gym.make('FrozenLake-v0')
    # env = gym.make('Queue-1-v0')
    env.seed(1243)

    env.reset()
    env.render()
    env.step(1)
    env.render()
    env.step(2)
    env.render()
    env.step(3)
    env.render()

if __name__ == '__main__':
    main()