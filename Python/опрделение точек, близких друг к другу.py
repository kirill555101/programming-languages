from typing import List, Tuple
import math

point = Tuple[float, float]


def distance(a: point, b: point):
    return math.hypot(a[0]-b[0], a[1]-b[1])


def closest_pair_of_points(points: List[point])\
        -> Tuple[float, point, point]:
    min_distance = distance(points[1], points[0])
    p = points[0]
    p1 = points[1]
    for i in range(1, len(points)-1, 1):
        for j in range(i+1, len(points), 1):
            if (distance(points[i], points[j]) < min_distance) and (points[i] != points[j]):
                min_distance = distance(points[i], points[j])
                p = points[i]
                p1 = points[j]
    points[0] = p
    points[1] = p1
    return (min_distance, points[0], points[1])


print(closest_pair_of_points([(1, 2), (2, 1), (1, 0)]))
