from django.test import TestCase

from app.calc import add, subtract


class CalcTest(TestCase):

    def test_add_numbers(self):
        """Test adding two numbers"""
        self.assertEqual(add(3,8),11)


    def test_subtract_numbers(self):
        """Test that values are substracted and returned"""
        self.assertEqual(subtract(5,11), 6)