.class public Lorg/telegram/ui/Components/Crop/CropGestureDetector;
.super Ljava/lang/Object;
.source "CropGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field private mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mMinimumVelocity:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mTouchSlop:F

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropGestureDetector$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$1;-><init>(Lorg/telegram/ui/Components/Crop/CropGestureDetector;)V

    .local v1, "mScaleListener":Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-direct {v2, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Crop/CropGestureDetector;)Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    return-object v0
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    :try_start_0
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    :try_start_0
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    return v9

    :pswitch_1
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    const/4 v9, -0x1

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_3
    const v9, 0xff00

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/2addr v9, v10

    shr-int/lit8 v4, v9, 0x8

    .local v4, "pointerIndex":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    if-ne v9, v10, :cond_0

    if-nez v4, :cond_3

    const/4 v3, 0x1

    .local v3, "newPointerIndex":I
    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    goto :goto_0

    .end local v3    # "newPointerIndex":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "newPointerIndex":I
    goto :goto_3

    .end local v3    # "newPointerIndex":I
    .end local v4    # "pointerIndex":I
    :pswitch_4
    iget-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    if-nez v9, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v7

    .local v7, "x":F
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v8

    .local v8, "y":F
    iget v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    sub-float v0, v7, v9

    .local v0, "dx":F
    iget v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    sub-float v1, v8, v9

    .local v1, "dy":F
    iget-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-nez v9, :cond_6

    mul-float v9, v0, v0

    mul-float v10, v1, v1

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v9, v10

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mTouchSlop:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_7

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    :cond_6
    iget-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    invoke-interface {v9, v0, v1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onDrag(FF)V

    iput v7, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    iput v8, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_5
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    goto/16 :goto_1

    :pswitch_6
    iget-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_9

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .local v5, "vX":F
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .local v6, "vY":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mMinimumVelocity:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_9

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    neg-float v12, v5

    neg-float v13, v6

    invoke-interface {v9, v10, v11, v12, v13}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onFling(FFFF)V

    .end local v5    # "vX":F
    .end local v6    # "vY":F
    :cond_9
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    :cond_a
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setOnGestureListener(Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    return-void
.end method
