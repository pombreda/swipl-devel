/*  $Id$

    Part of SWI-Prolog

    Author:        Jan Wielemaker
    E-mail:        J.Wielemak@uva.nl
    WWW:           http://www.swi-prolog.org
    Copyright (C): 2008, University of Amsterdam

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/

:- module(test_index, [test_index/0]).
:- use_module(library(plunit)).

/** <module> Test Prolog indexing

This module is a Unit test for Prolog clause indexing.

@author	Jan Wielemaker
*/

test_index :-
	run_tests([ index
		  ]).

:- begin_tests(index).

:- index(t(0,1)).

t(1, aap).
t(2, noot).
t(3, mies).

test(arg_2, X==2) :-
	t(X, noot).

:- end_tests(index).
