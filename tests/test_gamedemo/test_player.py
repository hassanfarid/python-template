from gamedemo.player import Player
from gamedemo.player import *
from gamedemo.weapons import *

def test_player_initialized_correctly():
    p1 = Player("The Knight", Sword(), 200)
    assert p1.is_alive == True

def test_player_initialized_dead():
    p1 = Player("The Knight", Sword(), 0)
    assert p1.is_alive == False