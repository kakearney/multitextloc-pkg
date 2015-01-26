function varargout = multitextloc(ax, str, pos, varargin)
%MULTITEXTLOC Apply textLoc to multiple axes at once
%
% multitextloc(ax, str, pos)
% h = multitextloc(ax, str, pos)
%
% Simple wrapper function to apply labels to multiple axes at once.  I find
% I use this a lot in conjunction with plotgrid.
%
% Input variables:
%
%   ax:     array of axes handles
%
%   str:    cell array of strings, same size as ax
%
%   pos:    location string or 1 x 2 cell array of {locstr,buffer}, see
%           textLoc for details

if ~isequal(numel(ax), numel(str))
    error('axis handles and labels must be same size');
end

for ii = 1:numel(ax)
    h(ii) = textLoc(str{ii}, pos, 'parent', ax(ii), varargin{:});
end

if nargout > 0
    varargout{1} = h;
end
