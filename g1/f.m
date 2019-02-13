function [] = f(A,b,X)
    clf;
    X=[X, X(:,1)];
    Axb = A*X +b;
    maxX = max(max(X(1,:), max(Axb(1,:))));
    maxY = max(max(X(2,:), max(Axb(2,:))));
    minX = min(min(X(1,:), min(Axb(1,:))));
    minY = min(min(X(2,:), min(Axb(2,:))));
    MIN = min(minX, minY);
    MAX = max(maxX, maxY);
    padding = (MAX - MIN)/10;
    subplot(1,2,1)
    fill(X(1,:), X(2,:),'g')
    line([MIN-padding MAX+padding], [0 0],'color','k') %x-axis
    line( [0 0],[MIN-padding MAX+padding],'color','k') %x-axis
    axis([MIN-padding,MAX+padding, MIN-padding, MAX+padding])
    subplot(1,2,2);
    fill(Axb(1,:), Axb(2,:),'b')
    line([MIN-padding MAX+padding], [0 0],'color','k') %x-axis
    line( [0 0],[MIN-padding MAX+padding],'color','k') %x-axis
    axis([MIN-padding,MAX+padding, MIN-padding, MAX+padding])
end

