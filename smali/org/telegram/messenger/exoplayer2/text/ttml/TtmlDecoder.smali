.class public final Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;
.super Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string/jumbo v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-string/jumbo v1, "TtmlDecoder"

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "style"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .end local p1    # "style":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    invoke-direct {p1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    :cond_0
    return-object p1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseFontSize(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)V
    .locals 8
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string/jumbo v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "expressions":[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v4, :cond_1

    sget-object v3, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "unit":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid unit for fontSize: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "unit":Ljava/lang/String;
    :cond_1
    array-length v3, v0

    if-ne v3, v5, :cond_2

    sget-object v3, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const-string/jumbo v3, "TtmlDecoder"

    const-string/jumbo v6, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid number of entries for fontSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "unit":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v6, "px"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "em"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    return-void

    :pswitch_1
    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1, v7}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_2

    .end local v2    # "unit":Ljava/lang/String;
    :cond_3
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid expression for fontSize: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 13
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x1e

    .local v1, "frameRate":I
    const-string/jumbo v11, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v12, "frameRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "frameRateString":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "frameRateMultiplier":F
    const-string/jumbo v11, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v12, "frameRateMultiplier"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "parts":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    new-instance v11, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    const-string/jumbo v12, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v11, v12}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v5, v11

    .local v5, "numerator":F
    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v0, v11

    .local v0, "denominator":F
    div-float v2, v5, v0

    .end local v0    # "denominator":F
    .end local v5    # "numerator":F
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_2
    sget-object v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v7, v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .local v7, "subFrameRate":I
    const-string/jumbo v11, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v12, "subFrameRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "subFrameRateString":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_3
    sget-object v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v9, v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .local v9, "tickRate":I
    const-string/jumbo v11, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v12, "tickRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "tickRateString":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_4
    new-instance v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v12, v1

    mul-float/2addr v12, v2

    invoke-direct {v11, v12, v7, v9}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object v11
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .local p3, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v4, "style"

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "style"

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "parentStyleId":Ljava/lang/String;
    new-instance v4, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    .local v2, "style":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    .local v0, "id":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->chain(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "parentStyleId":Ljava/lang/String;
    .end local v2    # "style":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    :cond_2
    :goto_1
    const-string/jumbo v4, "head"

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p2

    :cond_3
    const-string/jumbo v4, "region"

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    .local v3, "ttmlRegionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .locals 22
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .param p4, "frameAndTickRate"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .local v12, "duration":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .local v4, "startTime":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .local v6, "endTime":J
    const-string/jumbo v10, ""

    .local v10, "regionId":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "styleIds":[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .local v11, "attributeCount":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v8

    .local v8, "style":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v11, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "attr":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .local v16, "value":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v17, "begin"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v17, "end"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v17, "dur"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v17, "style"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v17, "region"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :pswitch_0
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v4

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v6

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v12

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .local v15, "ids":[Ljava/lang/String;
    array-length v3, v15

    if-lez v3, :cond_1

    move-object v9, v15

    goto :goto_2

    .end local v15    # "ids":[Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v10, v16

    goto :goto_2

    .end local v2    # "attr":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v18, v20

    if-eqz v3, :cond_4

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v18

    if-eqz v3, :cond_3

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    :cond_3
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v18

    if-eqz v3, :cond_4

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    :cond_4
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v18

    if-nez v3, :cond_5

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v12, v18

    if-eqz v3, :cond_6

    add-long v6, v4, v12

    :cond_5
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v3 .. v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    move-result-object v3

    return-object v3

    :cond_6
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v18, v20

    if-eqz v3, :cond_5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_4
        0x18601 -> :sswitch_2
        0x188db -> :sswitch_1
        0x59478a9 -> :sswitch_0
        0x68b1db1 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 14
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    const-string/jumbo v10, "id"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "regionId":Ljava/lang/String;
    const-string/jumbo v10, "origin"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "regionOrigin":Ljava/lang/String;
    const-string/jumbo v10, "extent"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "regionExtent":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const/4 v4, 0x1

    .local v4, "position":F
    const/4 v2, 0x1

    sget-object v10, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, "originMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float v4, v10, v13

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    div-float v2, v10, v13

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .local v8, "width":F
    if-eqz v5, :cond_3

    sget-object v10, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    div-float v8, v10, v13

    .end local v1    # "extentMatcher":Ljava/util/regex/Matcher;
    :cond_3
    :goto_2
    const/4 v10, 0x1

    cmpl-float v10, v4, v10

    if-eqz v10, :cond_0

    new-instance v9, Landroid/util/Pair;

    new-instance v10, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v2, v11, v8}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;-><init>(FFIF)V

    invoke-direct {v9, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .end local v8    # "width":F
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "TtmlDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ignoring region with malformed origin: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "extentMatcher":Ljava/util/regex/Matcher;
    .restart local v8    # "width":F
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "TtmlDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ignoring malformed region extent: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "style"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .local v0, "attributeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "attributeValue":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    move v4, v6

    :goto_1
    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v10, "id"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v10, "backgroundColor"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v10, "color"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_1

    :sswitch_3
    const-string/jumbo v10, "fontFamily"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v9

    goto :goto_1

    :sswitch_4
    const-string/jumbo v10, "fontSize"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v10, "fontWeight"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v10, "fontStyle"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v10, "textAlign"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v10, "textDecoration"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :pswitch_0
    const-string/jumbo v4, "style"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    :try_start_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing background value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    :try_start_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing color value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_4
    :try_start_2
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_2
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v2

    .local v2, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    const-string/jumbo v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing fontSize value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    const-string/jumbo v10, "bold"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    const-string/jumbo v10, "italic"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_7
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_2
    move v4, v6

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v10, "left"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_3

    :sswitch_a
    const-string/jumbo v10, "start"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_3

    :sswitch_b
    const-string/jumbo v10, "right"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_3

    :sswitch_c
    const-string/jumbo v10, "end"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v9

    goto :goto_3

    :sswitch_d
    const-string/jumbo v10, "center"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_3

    :pswitch_9
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_d
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2

    :cond_3
    move v4, v6

    :goto_4
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :sswitch_e

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_4

    :sswitch_f

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v7

    goto :goto_4

    :sswitch_10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v8

    goto :goto_4

    :sswitch_11

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v9

    goto :goto_4

    :pswitch_f
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4


    move-result-object p2

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4


    move-result-object p2

    goto/16 :goto_2

    .end local v1    # "attributeValue":Ljava/lang/String;
    :cond_4
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_6
        -0x48ff636d -> :sswitch_3
        -0x3f826a28 -> :sswitch_7
        -0x3468fa43 -> :sswitch_8
        -0x2bc67c59 -> :sswitch_5
        0xd1b -> :sswitch_0
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_4
        0x4cb7f6d5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_d
        0x188db -> :sswitch_c
        0x32a007 -> :sswitch_9
        0x677c21c -> :sswitch_b
        0x68ac462 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_11
        -0x3d363934 -> :sswitch_10
        0x36723ff0 -> :sswitch_f
        0x641ec051 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "parentStyleIds"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 20
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameAndTickRate"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    sget-object v15, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "hours":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0xe10

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v2, v0

    .local v2, "durationSeconds":D
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "minutes":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "seconds":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "fraction":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    :goto_0
    add-double v2, v2, v16

    const/4 v15, 0x5

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "frames":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    :goto_1
    add-double v2, v2, v16

    const/4 v15, 0x6

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "subframes":Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    :goto_2
    add-double v2, v2, v16

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v12    # "subframes":Ljava/lang/String;
    :goto_3
    return-wide v16

    .restart local v2    # "durationSeconds":D
    .restart local v4    # "fraction":Ljava/lang/String;
    .restart local v6    # "hours":Ljava/lang/String;
    .restart local v8    # "minutes":Ljava/lang/String;
    .restart local v9    # "seconds":Ljava/lang/String;
    :cond_0
    const-wide/16 v16, 0x0

    goto :goto_0

    .restart local v5    # "frames":Ljava/lang/String;
    :cond_1
    const-wide/16 v16, 0x0

    goto :goto_1

    .restart local v12    # "subframes":Ljava/lang/String;
    :cond_2
    const-wide/16 v16, 0x0

    goto :goto_2

    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v12    # "subframes":Ljava/lang/String;
    :cond_3
    sget-object v15, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "timeValue":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .local v10, "offsetSeconds":D
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "unit":Ljava/lang/String;
    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_4
    :goto_4
    packed-switch v15, :pswitch_data_0

    :goto_5
    :pswitch_0
    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_3

    :sswitch_0
    const-string/jumbo v16, "h"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x0

    goto :goto_4

    :sswitch_1
    const-string/jumbo v16, "m"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :sswitch_2
    const-string/jumbo v16, "s"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x2

    goto :goto_4

    :sswitch_3
    const-string/jumbo v16, "ms"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x3

    goto :goto_4

    :sswitch_4
    const-string/jumbo v16, "f"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x4

    goto :goto_4

    :sswitch_5
    const-string/jumbo v16, "t"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x5

    goto :goto_4

    :pswitch_1
    const-wide v16, 0x40ac200000000000L    # 3600.0

    mul-double v10, v10, v16

    goto :goto_5

    :pswitch_2
    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v10, v10, v16

    goto :goto_5

    :pswitch_3
    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v10, v10, v16

    goto :goto_5

    :pswitch_4
    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    goto/16 :goto_5

    .end local v10    # "offsetSeconds":D
    .end local v13    # "timeValue":Ljava/lang/String;
    .end local v14    # "unit":Ljava/lang/String;
    :cond_5
    new-instance v15, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Malformed time expression: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v15

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_2
        0x74 -> :sswitch_5
        0xda6 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BI)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .locals 20
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .local v15, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .local v12, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    const-string/jumbo v17, ""

    new-instance v18, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v15, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v13, 0x0

    .local v13, "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .local v10, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    const/4 v14, 0x0

    .local v14, "unsupportedNodeDepth":I
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .local v4, "eventType":I
    sget-object v5, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .local v5, "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_9

    invoke-virtual {v10}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    .local v11, "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    if-nez v14, :cond_7

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    const-string/jumbo v17, "tt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v5

    :cond_0
    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string/jumbo v17, "TtmlDecoder"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Ignoring unsupported tag: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x1

    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    goto :goto_0

    .restart local v8    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v17, "head"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v12}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .end local v4    # "eventType":I
    .end local v5    # "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v14    # "unsupportedNodeDepth":I
    .end local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v16

    .local v16, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    const-string/jumbo v18, "Unable to decode source"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .end local v16    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "eventType":I
    .restart local v5    # "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .restart local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    .restart local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .restart local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    .restart local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .restart local v14    # "unsupportedNodeDepth":I
    .restart local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11, v12, v5}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    move-result-object v9

    .local v9, "node":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    if-eqz v11, :cond_1

    invoke-virtual {v11, v9}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->addChild(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .end local v9    # "node":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    :catch_1
    move-exception v3

    .local v3, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :try_start_2
    const-string/jumbo v17, "TtmlDecoder"

    const-string/jumbo v18, "Suppressing parser error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .end local v3    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :cond_4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->addChild(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .end local v4    # "eventType":I
    .end local v5    # "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v14    # "unsupportedNodeDepth":I
    .end local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string/jumbo v18, "Unexpected error when reading input."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "eventType":I
    .restart local v5    # "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .restart local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    .restart local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .restart local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    .restart local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .restart local v14    # "unsupportedNodeDepth":I
    .restart local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    :try_start_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "tt"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    new-instance v13, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;

    .end local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v6, v12}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    .restart local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    :cond_6
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .end local v8    # "name":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_8

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .end local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    :cond_9
    return-object v13
.end method
