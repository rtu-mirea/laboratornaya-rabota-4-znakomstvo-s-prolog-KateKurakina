domains
  group_name, genre, member = symbol

predicates
  nondeterm genre(group_name, genre).
  nondeterm member(group_name, member).
  nondeterm group(group_name).

clauses
  group(exo).
  group(years_years).
  group(nct).
  genre(exo,kpop).
  genre(years_years,pop).
  genre(nct,kpop).
  member(years_years,olly).
  member(exo,sehun).
  member(nct,taeyong).

  group(X):-genre(X,pop),member(X,olly).
  group(X):-genre(X,kpop),member(X,sehun.)

goal
  group(X).
