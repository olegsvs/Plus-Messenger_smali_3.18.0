.class Lorg/telegram/ui/ArticleViewer$BlockListCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockListCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

.field private lastCreatedWidth:I

.field private textLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private textNumLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private textYLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textNumLayouts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x41900000    # 18.0f

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/StaticLayout;

    .local v2, "textLayout":Landroid/text/StaticLayout;
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textNumLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/StaticLayout;

    .local v3, "textLayout2":Landroid/text/StaticLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v5, v4

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4, p1, v2}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .local v6, "width":I
    const/4 v2, 0x0

    .local v2, "height":I
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v7, :cond_4

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->lastCreatedWidth:I

    if-eq v7, v6, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textNumLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$RichText;

    .local v3, "item":Lorg/telegram/tgnet/TLRPC$RichText;
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v8, 0x0

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v6, v9

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-static {v7, v8, v3, v9, v10}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v5

    .local v5, "textLayout":Landroid/text/StaticLayout;
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    if-eqz v7, :cond_1

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "%d."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v0, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "num":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/high16 v8, 0x42580000    # 54.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v6, v8

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-static {v7, v4, v3, v8, v9}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textNumLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v4    # "num":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "\u2022"

    .restart local v4    # "num":Ljava/lang/String;
    goto :goto_1

    .end local v3    # "item":Lorg/telegram/tgnet/TLRPC$RichText;
    .end local v4    # "num":Ljava/lang/String;
    .end local v5    # "textLayout":Landroid/text/StaticLayout;
    :cond_2
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v2, v7

    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_3
    :goto_2
    invoke-virtual {p0, v6, v2}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->setMeasuredDimension(II)V

    return-void

    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "count":I
    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .local v4, "textX":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    if-ge v6, v7, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/StaticLayout;

    .local v3, "textLayout":Landroid/text/StaticLayout;
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .end local v3    # "textLayout":Landroid/text/StaticLayout;
    :goto_1
    return v0

    .restart local v3    # "textLayout":Landroid/text/StaticLayout;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v3    # "textLayout":Landroid/text/StaticLayout;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->lastCreatedWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->requestLayout()V

    return-void
.end method
