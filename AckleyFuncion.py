import numpy as np
import matplotlib.pyplot as plt


def ackley(x, y):
    a = 20.0
    b = 0.2
    c = 2.0 * np.pi

    term1 = -a * np.exp(-b * np.sqrt((x ** 2 + y ** 2) / 2))
    term2 = -np.exp((np.cos(c * x) + np.cos(c * y)) / 2)
    result = term1 + term2 + a + np.exp(1)

    return result


x = np.linspace(-5, 5, 400)
y = np.linspace(-5, 5, 400)
X, Y = np.meshgrid(x, y)

Z = ackley(X, Y)

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')
ax.plot_surface(X, Y, Z, cmap='viridis')

ax.set_title('Ackley Function 3D Surface Plot')
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Ackley Value')

plt.show()

