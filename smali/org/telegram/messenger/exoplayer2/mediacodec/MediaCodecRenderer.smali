.class public abstract Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

.field private codec:Landroid/media/MediaCodec;


.field private codecIsAdaptive:Z

.field private codecNeedsAdaptationWorkaround:Z

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosPropagationWorkaround:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private format:Lorg/telegram/messenger/exoplayer2/Format;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private shouldSkipOutputBuffer:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 3
    .param p1, "trackType"    # I
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    const-string/jumbo v0, "OMX.Nvidia.h264.decode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "flounder"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "flounder_lte"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "grouper"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "tilapia"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const-string/jumbo v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x12

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v1, :cond_1

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "OMX.SEC.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/telegram/messenger/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "SM-G800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    const/4 v0, 0x1

    sget v1, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    if-ne v1, v0, :cond_0

    const-string/jumbo v1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 13
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-gez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    aget-object v0, v1, v2

    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer(J)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .end local v0    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    aget-object v7, v1, v2

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputFormat()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffersChanged()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private feedInputBuffer()Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    aget-object v3, v3, v4

    iput-object v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v2, :cond_4

    :goto_1
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v3, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    sget-object v8, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v5, v8

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v15, 0x0

    .local v15, "adaptiveReconfigurationBytes":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v2, :cond_7

    const/16 v20, -0x4

    .local v20, "result":I
    :goto_2
    const/4 v2, -0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_a

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v20    # "result":I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .local v17, "data":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .end local v17    # "data":[B
    :cond_8
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .end local v19    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v20

    .restart local v20    # "result":I
    goto :goto_2

    :cond_a
    const/4 v2, -0x5

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_e
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v2, :cond_f

    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v18

    .local v18, "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .end local v18    # "e":Landroid/media/MediaCodec$CryptoException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v16

    .local v16, "bufferEncrypted":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldWaitForKeys(Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v2, :cond_13

    if-nez v16, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    :cond_13
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .local v6, "presentationTimeUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-static {v2, v15}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoInfo(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v5

    .local v5, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .end local v5    # "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    :goto_5
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    move-wide v12, v6

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .end local v6    # "presentationTimeUs":J
    :catch_1
    move-exception v18

    .restart local v18    # "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2
.end method

.method private static getFrameworkCryptoInfo(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4
    .param p0, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p1, "adaptiveReconfigurationBytes"    # I

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .local v0, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputStreamEnded()V

    goto :goto_0
.end method

.method private processOutputBuffersChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method private processOutputFormat()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .local v0, "format":Landroid/media/MediaFormat;
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_0
.end method

.method private readFormat()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    .local v0, "result":I
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method private shouldSkipOutputBuffer(J)Z
    .locals 5
    .param p1, "presentationTimeUs"    # J

    .prologue
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .param p1, "bufferEncrypted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    .local v0, "drmSessionState":I
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private throwDecoderInitError(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .locals 1
    .param p1, "e"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 1
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "oldFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract configureCodec(Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/Format;Landroid/media/MediaCrypto;)V
.end method

.method protected flushCodec()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324


    iput v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    goto :goto_0
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-gez v0, :cond_0


    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0


    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final maybeInitCodec()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v15, v2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .local v15, "mimeType":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "mediaCrypto":Landroid/media/MediaCrypto;
    const/4 v11, 0x0

    .local v11, "drmSessionRequiresSecureDecoder":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getState()I

    move-result v12

    .local v12, "drmSessionState":I
    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v6

    invoke-static {v2, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    :cond_2
    const/4 v2, 0x3

    if-eq v12, v2, :cond_3

    const/4 v2, 0x4

    if-ne v12, v2, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getMediaCrypto()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;->getWrappedMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v15}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v11

    .end local v12    # "drmSessionState":I
    :cond_4
    const/4 v10, 0x0

    .local v10, "decoderInfo":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v11}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v10

    if-nez v10, :cond_5

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string/jumbo v2, "MediaCodecRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Drm session requires secure decoder for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "no secure decoder available. Trying to proceed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    if-nez v10, :cond_6

    new-instance v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v7, 0x0

    const v16, -0xc34f

    move/from16 v0, v16

    invoke-direct {v2, v6, v7, v11, v0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    :cond_6
    iget-object v3, v10, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .local v3, "codecName":Ljava/lang/String;
    iget-boolean v2, v10, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v3, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v3, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .local v8, "codecInitializingTimestamp":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createCodec:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    const-string/jumbo v2, "configureCodec"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v14}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->configureCodec(Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    const-string/jumbo v2, "startCodec"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "codecInitializedTimestamp":J
    sub-long v6, v4, v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;JJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "codecInitializedTimestamp":J
    .end local v8    # "codecInitializingTimestamp":J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getState()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    add-long v6, v6, v16

    :goto_3
    move-object/from16 v0, p0


    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v6, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    goto/16 :goto_0

    .end local v3    # "codecName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .local v13, "e":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const v7, -0xc34e

    invoke-direct {v2, v6, v13, v11, v7}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    goto/16 :goto_1

    .end local v13    # "e":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    .restart local v3    # "codecName":Ljava/lang/String;
    :catch_1
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {v2, v6, v13, v11, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    goto :goto_2

    .end local v13    # "e":Ljava/lang/Exception;
    :cond_7
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    return-void
.end method

.method protected onDisabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    return-void

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_3
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_3
    :try_start_5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_4
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_4
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_5
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_5
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_6
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 7
    .param p1, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .local v1, "oldFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v6, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_0

    move-object v2, v3

    :goto_0
    invoke-static {v6, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v4

    .local v0, "drmInitDataChanged":Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Media requires a DrmSessionManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .end local v0    # "drmInitDataChanged":Z
    :cond_0
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    .restart local v0    # "drmInitDataChanged":Z
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-interface {v2, v3, v6}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V

    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_5

    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    :goto_4
    return-void

    :cond_4
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3

    :cond_6
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v2, :cond_7

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_4
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    return-void
.end method

.method protected onOutputStreamEnded()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    :cond_0
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0
    .param p1, "presentationTimeUs"    # J

    .prologue
    return-void
.end method

.method protected onQueueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    return-void
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324


    iput v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_0

    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_1
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    :cond_1
    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_3
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_2

    :try_start_5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    :cond_2
    throw v0

    :catchall_4
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_5
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_3

    :try_start_6
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    :cond_3
    throw v0

    :catchall_6
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0
.end method

.method public render(JJ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->readFormat()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "drainAndFeed"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->skipToKeyframeBefore(J)V

    goto :goto_0
.end method

.method protected shouldInitCodec()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 2
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-virtual {p0, v1, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormat(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;)I
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method protected abstract supportsFormat(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    return v0
.end method
