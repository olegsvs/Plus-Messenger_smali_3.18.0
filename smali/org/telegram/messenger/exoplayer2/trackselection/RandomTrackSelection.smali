.class public final Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;
.super Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
.source "RandomTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final random:Ljava/util/Random;

.field private selectedIndex:I


# direct methods
.method public varargs constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V
    .locals 2
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[IJ)V
    .locals 1
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "seed"    # J

    .prologue
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p3, p4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V
    .locals 1
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "random"    # Ljava/util/Random;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    return v0
.end method

.method public updateSelectedTrack(J)V
    .locals 6
    .param p1, "bufferedDurationUs"    # J

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "nowMs":J
    const/4 v1, 0x0

    .local v1, "nonBlacklistedFormatCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "nonBlacklistedFormatCount":I
    .local v2, "nonBlacklistedFormatCount":I
    if-ne v3, v1, :cond_3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    move v1, v2

    .end local v2    # "nonBlacklistedFormatCount":I
    .restart local v1    # "nonBlacklistedFormatCount":I
    :cond_2
    return-void

    .end local v1    # "nonBlacklistedFormatCount":I
    .restart local v2    # "nonBlacklistedFormatCount":I
    :cond_3
    move v1, v2

    .end local v2    # "nonBlacklistedFormatCount":I
    .restart local v1    # "nonBlacklistedFormatCount":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
