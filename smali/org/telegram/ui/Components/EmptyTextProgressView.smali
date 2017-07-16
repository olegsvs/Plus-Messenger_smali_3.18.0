.class public Lorg/telegram/ui/Components/EmptyTextProgressView;
.super Landroid/widget/FrameLayout;
.source "EmptyTextProgressView.java"


# instance fields
.field private inLayout:Z

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private showAtCenter:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "emptyListPlaceholder"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoResult"

    const v2, 0x7f0703e6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmptyTextProgressView$1;-><init>(Lorg/telegram/ui/Components/EmptyTextProgressView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    sub-int v4, p4, p2

    .local v4, "width":I
    sub-int v2, p5, p3

    .local v2, "height":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v5, v7, 0x2

    .local v5, "x":I
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->showAtCenter:Z

    if-eqz v7, :cond_1

    div-int/lit8 v7, v2, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .local v6, "y":I
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .end local v6    # "y":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v2, v7

    div-int/lit8 v6, v7, 0x2

    .restart local v6    # "y":I
    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    return-void
.end method

.method public setShowAtCenter(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->showAtCenter:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    return-void
.end method

.method public showTextView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    return-void
.end method
