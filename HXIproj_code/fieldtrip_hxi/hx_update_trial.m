function cfg_new = hx_update_trial(cfg_old, data)


cfg_new = cfg_old;
labels = cfg_old.label;

rows = [];
for i = 1 : length(labels)
    rows(end+1) = str2double(labels{i});
end

si = cfg_old.sampleinfo;
cols = [];
for i = 1 : size(si,1)
    curr = si(i,:);
    cols = [cols; curr(1) : curr(2)];
end

trials = cfg_old.trial;
trials_new = {};
for i = 1 : length(trials)
    trials_new = [trials_new, data(rows, cols(i,:))];
end

cfg_new.trial = trials_new;
end