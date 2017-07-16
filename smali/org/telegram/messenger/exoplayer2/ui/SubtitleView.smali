.class public final Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;


# static fields
.field private static final ABSOLUTE:I = 0x2

.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field private static final FRACTIONAL:I = 0x0

.field private static final FRACTIONAL_IGNORE_PADDING:I = 0x1


# instance fields
.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    return-void
.end method

.method private getUserCaptionFontScaleV19()F
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "captioning"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    return v1
.end method

.method private getUserCaptionStyleV19()Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "captioning"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    move-result-object v1

    return-object v1
.end method

.method private setTextSize(IF)V
    .locals 1
    .param p1, "textSizeType"    # I
    .param p2, "textSize"    # F

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v11, 0x0

    .local v11, "cueCount":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getTop()I

    move-result v14

    .local v14, "rawTop":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getBottom()I

    move-result v13

    .local v13, "rawBottom":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingLeft()I

    move-result v1

    add-int v7, v0, v1

    .local v7, "left":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingTop()I

    move-result v0

    add-int v8, v14, v0

    .local v8, "top":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingRight()I

    move-result v1

    add-int v9, v0, v1

    .local v9, "right":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingBottom()I

    move-result v0

    sub-int v10, v13, v0

    .local v10, "bottom":I
    if-le v10, v8, :cond_0

    if-gt v9, v7, :cond_2

    :cond_0
    return-void

    .end local v7    # "left":I
    .end local v8    # "top":I
    .end local v9    # "right":I
    .end local v10    # "bottom":I
    .end local v11    # "cueCount":I
    .end local v13    # "rawBottom":I
    .end local v14    # "rawTop":I
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_0

    .restart local v7    # "left":I
    .restart local v8    # "top":I
    .restart local v9    # "right":I
    .restart local v10    # "bottom":I
    .restart local v11    # "cueCount":I
    .restart local v13    # "rawBottom":I
    .restart local v14    # "rawTop":I
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    .local v4, "textSizePx":F
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-lez v0, :cond_0

    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/text/Cue;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->draw(Lorg/telegram/messenger/exoplayer2/text/Cue;ZLorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .end local v4    # "textSizePx":F
    .end local v12    # "i":I
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-nez v0, :cond_4

    sub-int v0, v10, v8

    :goto_3
    int-to-float v0, v0

    mul-float v4, v1, v0

    goto :goto_1

    :cond_4
    sub-int v0, v13, v14

    goto :goto_3
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 1
    .param p1, "applyEmbeddedStyles"    # Z

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setBottomPaddingFraction(F)V
    .locals 1
    .param p1, "bottomPaddingFraction"    # F

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setCues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .local v0, "cueCount":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "cueCount":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .restart local v0    # "cueCount":I
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setFixedTextSize(IF)V
    .locals 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {p1, p2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    return-void

    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public setFractionalTextSize(F)V
    .locals 1
    .param p1, "fractionOfHeight"    # F

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 1
    .param p1, "fractionOfHeight"    # F
    .param p2, "ignorePadding"    # Z

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyle(Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;)V
    .locals 1
    .param p1, "style"    # Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setUserDefaultStyle()V
    .locals 2

    .prologue
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getUserCaptionStyleV19()Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setStyle(Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;)V

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    goto :goto_0
.end method

.method public setUserDefaultTextSize()V
    .locals 3

    .prologue
    sget v1, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    .local v0, "fontScale":F
    :goto_0
    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void

    .end local v0    # "fontScale":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method
