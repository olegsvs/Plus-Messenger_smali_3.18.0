.class public Lorg/telegram/ui/Cells/BotHelpCell;
.super Landroid/view/View;
.source "BotHelpCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

.field private height:I

.field private oldText:Ljava/lang/String;

.field private pressedLink:Landroid/text/style/ClickableSpan;

.field private textLayout:Landroid/text/StaticLayout;

.field private textPaint:Landroid/text/TextPaint;

.field private textX:I

.field private textY:I

.field private urlPaint:Landroid/graphics/Paint;

.field private urlPath:Lorg/telegram/ui/Components/LinkPath;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->urlPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatLTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatLLinkColor:I

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->urlPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "chatLLinkColor"

    const v2, 0x33316f9f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->getIntAlphaColor(Ljava/lang/String;IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private resetPressedLink()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BotHelpCell;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .local v0, "x":I
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .local v1, "y":I
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v3, "chat_messageTextIn"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v3, "chat_messageLinkIn"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textX:I

    int-to-float v2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_urlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/BotHelpCell;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .local v10, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .local v12, "y":F
    const/4 v7, 0x0

    .local v7, "result":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    if-eqz v14, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-nez v14, :cond_5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textX:I

    int-to-float v14, v14

    sub-float v14, v10, v14

    float-to-int v11, v14

    .local v11, "x2":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textY:I

    int-to-float v14, v14

    sub-float v14, v12, v14

    float-to-int v13, v14

    .local v13, "y2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v13}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    int-to-float v15, v11

    invoke-virtual {v14, v4, v15}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v6

    .local v6, "off":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    .local v3, "left":F
    int-to-float v14, v11

    cmpg-float v14, v3, v14

    if-gtz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v14

    add-float/2addr v14, v3

    int-to-float v15, v11

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .local v1, "buffer":Landroid/text/Spannable;
    const-class v14, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v6, v6, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ClickableSpan;

    .local v5, "link":[Landroid/text/style/ClickableSpan;
    array-length v14, v5

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    const/4 v14, 0x0

    aget-object v14, v5, v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .local v8, "start":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v8, v0}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/StaticLayout;IF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/BotHelpCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v8, v15, v0}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "buffer":Landroid/text/Spannable;
    .end local v3    # "left":F
    .end local v5    # "link":[Landroid/text/style/ClickableSpan;
    .end local v6    # "off":I
    .end local v8    # "start":I
    .end local v11    # "x2":I
    .end local v13    # "y2":I
    :cond_1
    :goto_0
    if-nez v7, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_2
    const/4 v14, 0x1

    :goto_1
    return v14

    .restart local v1    # "buffer":Landroid/text/Spannable;
    .restart local v3    # "left":F
    .restart local v5    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v6    # "off":I
    .restart local v11    # "x2":I
    .restart local v13    # "y2":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v1    # "buffer":Landroid/text/Spannable;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "left":F
    .end local v5    # "link":[Landroid/text/style/ClickableSpan;
    .end local v6    # "off":I
    .end local v11    # "x2":I
    .end local v13    # "y2":I
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "buffer":Landroid/text/Spannable;
    .restart local v3    # "left":F
    .restart local v5    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v6    # "off":I
    .restart local v11    # "x2":I
    .restart local v13    # "y2":I
    :cond_3
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    goto :goto_0

    .end local v1    # "buffer":Landroid/text/Spannable;
    .end local v5    # "link":[Landroid/text/style/ClickableSpan;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v3    # "left":F
    .end local v6    # "off":I
    .end local v11    # "x2":I
    .end local v13    # "y2":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    if-eqz v14, :cond_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;


    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;



    move-result-object v9

    .local v9, "url":Ljava/lang/String;
    const-string/jumbo v14, "@"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string/jumbo v14, "#"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->delegate:Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->delegate:Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

    invoke-interface {v14, v9}, Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;->didPressUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v9    # "url":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    const/4 v7, 0x1

    goto :goto_0

    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    instance-of v14, v14, Landroid/text/style/URLSpan;

    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/BotHelpCell;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    check-cast v14, Landroid/text/style/URLSpan;

    invoke-virtual {v14}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/BotHelpCell;->pressedLink:Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/BotHelpCell;->resetPressedLink()V

    goto/16 :goto_0

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;)V
    .locals 0
    .param p1, "botHelpCellDelegate"    # Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->delegate:Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/high16 v13, 0x41b00000    # 22.0f

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/BotHelpCell;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->oldText:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->oldText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Cells/BotHelpCell;->oldText:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Cells/BotHelpCell;->setVisibility(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v3, v0

    .local v3, "maxWidth":I
    :goto_1
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .local v1, "stringBuilder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v0, "BotInfoTitle"

    const v2, 0x7f0700cc

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .local v11, "help":Ljava/lang/String;
    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string/jumbo v0, "\n\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v8, 0x0

    .local v8, "a":I
    :goto_2
    array-length v0, v12

    if-ge v8, v0, :cond_6

    aget-object v0, v12, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_4

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v1    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "maxWidth":I
    .end local v8    # "a":I
    .end local v11    # "help":Ljava/lang/String;
    :cond_5
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v3, v0

    .restart local v3    # "maxWidth":I
    goto :goto_1

    .restart local v1    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .restart local v8    # "a":I
    .restart local v11    # "help":Ljava/lang/String;
    :cond_6
    invoke-static {v5, v1}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v5, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v0, v2, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    :try_start_0
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    .local v9, "count":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_7

    iget v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Cells/BotHelpCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v8}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v4

    add-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    if-le v0, v3, :cond_8

    iput v3, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "count":I
    :cond_8
    :goto_4
    iget v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Cells/BotHelpCell;->width:I

    goto/16 :goto_0

    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessage"

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
