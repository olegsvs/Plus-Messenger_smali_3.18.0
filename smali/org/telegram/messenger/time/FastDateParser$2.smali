.class final Lorg/telegram/messenger/time/FastDateParser$2;
.super Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(I)I
    .locals 1
    .param p1, "iValue"    # I

    .prologue
    add-int/lit8 v0, p1, -0x1

    return v0
.end method
