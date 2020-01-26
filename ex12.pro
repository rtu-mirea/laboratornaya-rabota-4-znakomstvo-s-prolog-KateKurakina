domains
  name=symbol

predicates
  nondeterm parent(name,name)
  nondeterm brother(name,name)
  nondeterm ancestor(name,name)
  nondeterm sister(name,name)
  nondeterm female(name)
  nondeterm male(name)
  nondeterm likes(name, name)
  nondeterm can_buy(name,name)
  nondeterm for_sale(name)

clauses
  parent(andrey, katya).
  parent(andrey, valya).
  parent(natalya, misha).
  parent(natalya, maksim).
  parent(nina, natalya).
  male(misha).
  male(maksim).
  female(katya).
  female(valya).
  likes(misha, coffee).
  can_buy(maksim, airpods).
  for_sale(coffee).
  for_sale(airpods).

  brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),male(Y).
  ancestor(X,Z):-parent(X,Y),ancestor(Y,Z).
  sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),female(Y).
  can_buy(X,Y):-male(X),female(X),likes(X,Y),for_sale(Y).

goal
  sister(katya,valya).
  %can_buy(X,Y).
