from gamedemo.weapons import Weapon

class Player:
    def __init__(self, name, weapon, health):
        self.name = name
        self.weapon = weapon
        self.health = 100
    def take_hit(self, damage):
        self.health -= damage
        return self.health

    @property
    def is_alive(self):
        return self.health > 0

    def __str__(self):
        return "Player {} has {} health and brings his {} to the fight".format(self.name, self.health, type(self.weapon).__name__)
