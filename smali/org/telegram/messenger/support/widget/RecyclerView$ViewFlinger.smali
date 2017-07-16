.class Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    const/4 v1, 0x0

    .line 4656
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4647
    sget-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4651
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4654
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4657
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4658
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 4823
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4824
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4825
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    .line 4826
    .local v9, "horizontal":Z
    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 4827
    .local v10, "velocity":I
    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 4828
    .local v4, "delta":I
    if-eqz v9, :cond_1

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 4829
    .local v3, "containerSize":I
    :goto_1
    div-int/lit8 v8, v3, 0x2

    .line 4830
    .local v8, "halfContainerSize":I
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 4831
    .local v6, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    .line 4832
    invoke-direct {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 4835
    .local v5, "distance":F
    if-lez v10, :cond_2

    .line 4836
    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    .line 4841
    .end local v1    # "absDx":I
    .local v7, "duration":I
    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    .line 4825
    .end local v3    # "containerSize":I
    .end local v4    # "delta":I
    .end local v5    # "distance":F
    .end local v6    # "distanceRatio":F
    .end local v7    # "duration":I
    .end local v8    # "halfContainerSize":I
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 4828
    .restart local v4    # "delta":I
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    :cond_1
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 4838
    .restart local v3    # "containerSize":I
    .restart local v5    # "distance":F
    .restart local v6    # "distanceRatio":F
    .restart local v8    # "halfContainerSize":I
    :cond_2
    if-eqz v9, :cond_3

    .end local v1    # "absDx":I
    :goto_3
    int-to-float v0, v1

    .line 4839
    .local v0, "absDelta":F
    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "duration":I
    goto :goto_2

    .end local v0    # "absDelta":F
    .end local v7    # "duration":I
    .restart local v1    # "absDx":I
    :cond_3
    move v1, v2

    .line 4838
    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 4780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4782
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 4817
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 4818
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 4819
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 4785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4786
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 4787
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4789
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4801
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 4802
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4803
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 4805
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4806
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 4792
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 4793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4798
    :goto_0
    return-void

    .line 4795
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4796
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 23

    .prologue
    .line 4662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 4663
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->stop()V

    .line 4777
    :goto_0
    return-void

    .line 4666
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4670
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4671
    .local v12, "scroller":Landroid/support/v4/widget/ScrollerCompat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    .line 4672
    .local v13, "smoothScroller":Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 4673
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v18

    .line 4674
    .local v18, "x":I
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v19

    .line 4675
    .local v19, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v20, v0

    sub-int v4, v18, v20

    .line 4676
    .local v4, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 4677
    .local v5, "dy":I
    const/4 v9, 0x0

    .line 4678
    .local v9, "hresult":I
    const/16 v17, 0x0

    .line 4679
    .local v17, "vresult":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4680
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4681
    const/4 v10, 0x0

    .local v10, "overscrollX":I
    const/4 v11, 0x0

    .line 4682
    .local v11, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 4683
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 4684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4685
    const-string/jumbo v20, "RV Scroll"

    invoke-static/range {v20 .. v20}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4686
    if-eqz v4, :cond_1

    .line 4687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v9

    .line 4688
    sub-int v10, v4, v9

    .line 4690
    :cond_1
    if-eqz v5, :cond_2

    .line 4691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v17

    .line 4692
    sub-int v11, v5, v17

    .line 4694
    :cond_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4695
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->repositionShadowingViews()V

    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4700
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v20

    if-nez v20, :cond_3

    .line 4701
    invoke-virtual {v13}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 4702
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    .line 4703
    .local v3, "adapterSize":I
    if-nez v3, :cond_16

    .line 4704
    invoke-virtual {v13}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4713
    .end local v3    # "adapterSize":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_4

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    .line 4716
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->getOverScrollMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 4717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 4719
    :cond_5
    if-nez v10, :cond_6

    if-eqz v11, :cond_c

    .line 4720
    :cond_6
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 4722
    .local v14, "vel":I
    const/4 v15, 0x0

    .line 4723
    .local v15, "velX":I
    move/from16 v0, v18

    if-eq v10, v0, :cond_7

    .line 4724
    if-gez v10, :cond_18

    neg-int v15, v14

    .line 4727
    :cond_7
    :goto_2
    const/16 v16, 0x0

    .line 4728
    .local v16, "velY":I
    move/from16 v0, v19

    if-eq v11, v0, :cond_8

    .line 4729
    if-gez v11, :cond_1a

    neg-int v0, v14

    move/from16 v16, v0

    .line 4732
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->getOverScrollMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 4733
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->absorbGlows(II)V

    .line 4735
    :cond_9
    if-nez v15, :cond_a

    move/from16 v0, v18

    if-eq v10, v0, :cond_a

    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v20

    if-nez v20, :cond_c

    :cond_a
    if-nez v16, :cond_b

    move/from16 v0, v19

    if-eq v11, v0, :cond_b

    .line 4736
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v20

    if-nez v20, :cond_c

    .line 4737
    :cond_b
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4740
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_c
    if-nez v9, :cond_d

    if-eqz v17, :cond_e

    .line 4741
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4744
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$500(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    .line 4748
    :cond_f
    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v20

    if-eqz v20, :cond_1c

    move/from16 v0, v17

    if-ne v0, v5, :cond_1c

    const/4 v8, 0x1

    .line 4750
    .local v8, "fullyConsumedVertical":Z
    :goto_4
    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v20

    if-eqz v20, :cond_1d

    if-ne v9, v4, :cond_1d

    const/4 v7, 0x1

    .line 4752
    .local v7, "fullyConsumedHorizontal":Z
    :goto_5
    if-nez v4, :cond_10

    if-eqz v5, :cond_11

    :cond_10
    if-nez v7, :cond_11

    if-eqz v8, :cond_1e

    :cond_11
    const/4 v6, 0x1

    .line 4755
    .local v6, "fullyConsumedAny":Z
    :goto_6
    invoke-virtual {v12}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v20

    if-nez v20, :cond_12

    if-nez v6, :cond_1f

    .line 4756
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 4757
    invoke-static {}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$600()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 4758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 4768
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "fullyConsumedAny":Z
    .end local v7    # "fullyConsumedHorizontal":Z
    .end local v8    # "fullyConsumedVertical":Z
    .end local v9    # "hresult":I
    .end local v10    # "overscrollX":I
    .end local v11    # "overscrollY":I
    .end local v17    # "vresult":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_13
    :goto_7
    if-eqz v13, :cond_15

    .line 4769
    invoke-virtual {v13}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 4770
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->access$400(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;II)V

    .line 4772
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    move/from16 v20, v0

    if-nez v20, :cond_15

    .line 4773
    invoke-virtual {v13}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4776
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    goto/16 :goto_0

    .line 4705
    .restart local v3    # "adapterSize":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v9    # "hresult":I
    .restart local v10    # "overscrollX":I
    .restart local v11    # "overscrollY":I
    .restart local v17    # "vresult":I
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_16
    invoke-virtual {v13}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v20

    move/from16 v0, v20

    if-lt v0, v3, :cond_17

    .line 4706
    add-int/lit8 v20, v3, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4707
    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->access$400(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    .line 4709
    :cond_17
    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->access$400(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    .line 4724
    .end local v3    # "adapterSize":I
    .restart local v14    # "vel":I
    .restart local v15    # "velX":I
    :cond_18
    if-lez v10, :cond_19

    move v15, v14

    goto/16 :goto_2

    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 4729
    .restart local v16    # "velY":I
    :cond_1a
    if-lez v11, :cond_1b

    move/from16 v16, v14

    goto/16 :goto_3

    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 4748
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_1c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 4750
    .restart local v8    # "fullyConsumedVertical":Z
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 4752
    .restart local v7    # "fullyConsumedHorizontal":Z
    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 4761
    .restart local v6    # "fullyConsumedAny":Z
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4762
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 4763
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/messenger/support/widget/GapWorker;->postFromTraversal(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    goto/16 :goto_7
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 4809
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 4810
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4845
    sget-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4846
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 4813
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4814
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 4854
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4855
    iput-object p4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4856
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4858
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 4859
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4860
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 4861
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4862
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v0, 0x0

    .line 4849
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .end local p3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4851
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 4865
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4866
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4867
    return-void
.end method