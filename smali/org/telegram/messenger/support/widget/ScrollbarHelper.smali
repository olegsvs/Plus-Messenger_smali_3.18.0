.class Lorg/telegram/messenger/support/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I
    .locals 3
    .param p0, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p1, "orientation"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .prologue
    invoke-virtual {p4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {p4, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "extend":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method static computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;ZZ)I
    .locals 9
    .param p0, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p1, "orientation"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z
    .param p6, "reverseLayout"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p4, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "minPosition":I
    invoke-virtual {p4, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "maxPosition":I
    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "itemsBefore":I
    :goto_1
    if-eqz p5, :cond_0

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .local v3, "laidOutArea":I
    invoke-virtual {p4, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .local v1, "itemRange":I
    int-to-float v6, v3

    int-to-float v7, v1

    div-float v0, v6, v7

    .local v0, "avgSizePerRow":F
    int-to-float v6, v2

    mul-float/2addr v6, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    .end local v0    # "avgSizePerRow":F
    .end local v1    # "itemRange":I
    .end local v2    # "itemsBefore":I
    .end local v3    # "laidOutArea":I
    :cond_2
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1
.end method

.method static computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I
    .locals 4
    .param p0, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p1, "orientation"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .prologue
    invoke-virtual {p4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    sub-int v0, v2, v3

    .local v0, "laidOutArea":I
    invoke-virtual {p4, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .local v1, "laidOutRange":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method
