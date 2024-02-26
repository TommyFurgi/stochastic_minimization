import numpy as np
import matplotlib.pyplot as plt

def rastrigin(x, y):
    A = 10
    result = A * 2 + (x**2 - A * np.cos(2 * np.pi * x)) + (y**2 - A * np.cos(2 * np.pi * y))
    return result

x = np.linspace(-5.12, 5.12, 400)
y = np.linspace(-5.12, 5.12, 400)
X, Y = np.meshgrid(x, y)

Z = rastrigin(X, Y)

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')
ax.plot_surface(X, Y, Z, cmap='viridis')

ax.set_title('Funkcja Rastrigina - Wykres powierzchni 3D')
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Wartość Rastrigina')

plt.show()
