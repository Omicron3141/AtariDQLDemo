import gym
import kerasrl as rl
from keras.models import Sequential
from keras.layers import Dense, Activation

env = gym.make('Breakout-v0')
env.reset()
env.render()

model 

agent = rl.agents.dqn.DQNAgent(model, policy=None, test_policy=None, enable_double_dqn=True, enable_dueling_network=False, dueling_type='avg')
agent.fit( env, 100, action_repetition=1, callbacks=None, verbose=1, visualize=True, nb_max_start_steps=0, start_step_policy=None, log_interval=10000, nb_max_episode_steps=None)

