@test_throws ErrorException eccentricity(g4)
z = eccentricity(a1; edge_dists=distmx1)
@test z == [6.2, 4.2, 6.2]
@test diameter(z) == diameter(a1; edge_dists=distmx1) == 6.2
@test periphery(z) == periphery(a1; edge_dists=distmx1) == [1,3]
@test radius(z) == radius(a1; edge_dists=distmx1) == 4.2
@test center(z) == center(a1; edge_dists=distmx1) == [2]

z = eccentricity(a2; edge_dists=distmx2)
@test z == [6.2, 4.2, 6.1]
@test diameter(z) == diameter(a2; edge_dists=distmx2) == 6.2
@test periphery(z) == periphery(a2; edge_dists=distmx2) == [1]
@test radius(z) == radius(a2; edge_dists=distmx2) == 4.2
@test center(z) == center(a2; edge_dists=distmx2) == [2]
