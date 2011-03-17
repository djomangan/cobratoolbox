function stoichiometry = SpeciesReference_getStoichiometry(SBMLSpeciesReference)
%
%   SpeciesReference_getStoichiometry 
%             takes an SBMLSpeciesReference structure 
%
%             and returns 
%               the stoichiometry of the speciesreference as 
%               either an integer (Level 1 models)
%               or     a double (Level 2 models)
%
%       stoichiometry = SpeciesReference_getStoichiometry(SBMLSpeciesReference)

%  Filename    :   SpeciesReference_getStoichiometry.m
%  Description :
%  Author(s)   :   SBML Development Group <sbml-team@caltech.edu>
%  $Id: SpeciesReference_getStoichiometry.m 7155 2008-06-26 20:24:00Z mhucka $
%  $Source v $
%
%<!---------------------------------------------------------------------------
% This file is part of SBMLToolbox.  Please visit http://sbml.org for more
% information about SBML, and the latest version of SBMLToolbox.
%
% Copyright 2005-2007 California Institute of Technology.
% Copyright 2002-2005 California Institute of Technology and
%                     Japan Science and Technology Corporation.
% 
% This library is free software; you can redistribute it and/or modify it
% under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation.  A copy of the license agreement is provided
% in the file named "LICENSE.txt" included with this software distribution.
% and also available online as http://sbml.org/software/sbmltoolbox/license.html
%----------------------------------------------------------------------- -->



% check that input is correct
if (~isstruct(SBMLSpeciesReference))
    error(sprintf('%s', ...
      'argument must be an SBML SpeciesReference structure'));
end;
 
[sbmlLevel, sbmlVersion] = GetLevelVersion(SBMLSpeciesReference);

if (~isSBML_SpeciesReference(SBMLSpeciesReference, sbmlLevel, sbmlVersion))
    error(sprintf('%s\n%s', 'SpeciesReference_getStoichiometry(SBMLSpeciesReference)', 'argument must be an SBML speciesreference structure'));
end;

stoichiometry = SBMLSpeciesReference.stoichiometry;