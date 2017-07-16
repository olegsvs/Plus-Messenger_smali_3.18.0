.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field private static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;ZZ)V
    .locals 3
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .param p2, "allowNonIdrKeyframes"    # Z
    .param p3, "detectAccessUnits"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->reset()V

    return-void
.end method

.method private outputSample(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .local v4, "flags":I
    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .local v5, "size":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    return-void

    .end local v4    # "flags":I
    .end local v5    # "size":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 24
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v20, p3, p2

    .local v20, "readLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move/from16 v21, v0

    add-int v21, v21, v20

    move/from16 v0, v21

    if-ge v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move/from16 v21, v0

    add-int v21, v21, v20

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .local v6, "nalRefIdc":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .local v7, "sliceType":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .local v9, "picParameterSetId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;

    .local v19, "ppsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    .local v5, "spsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    iget-boolean v4, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    iget v0, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v10, 0x0

    .local v10, "fieldPicFlag":Z
    const/4 v11, 0x0

    .local v11, "bottomFieldFlagPresent":Z
    const/4 v12, 0x0

    .local v12, "bottomFieldFlag":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    iget v0, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .local v8, "frameNum":I
    iget-boolean v4, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    const/4 v11, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v4, v0, :cond_9

    const/4 v13, 0x1

    .local v13, "idrPicFlag":Z
    :goto_1
    const/4 v14, 0x0

    .local v14, "idrPicId":I
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    :cond_7
    const/4 v15, 0x0

    .local v15, "picOrderCntLsb":I
    const/16 v16, 0x0

    .local v16, "deltaPicOrderCntBottom":I
    const/16 v17, 0x0

    .local v17, "deltaPicOrderCnt0":I
    const/16 v18, 0x0

    .local v18, "deltaPicOrderCnt1":I
    iget v4, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    iget v0, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    iget v0, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v4, :cond_8

    if-nez v10, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v16

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v4 .. v18}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    goto/16 :goto_0

    .end local v13    # "idrPicFlag":Z
    .end local v14    # "idrPicId":I
    .end local v15    # "picOrderCntLsb":I
    .end local v16    # "deltaPicOrderCntBottom":I
    .end local v17    # "deltaPicOrderCnt0":I
    .end local v18    # "deltaPicOrderCnt1":I
    :cond_9
    const/4 v13, 0x0

    goto :goto_1

    .restart local v13    # "idrPicFlag":Z
    .restart local v14    # "idrPicId":I
    .restart local v15    # "picOrderCntLsb":I
    .restart local v16    # "deltaPicOrderCntBottom":I
    .restart local v17    # "deltaPicOrderCnt0":I
    .restart local v18    # "deltaPicOrderCnt1":I
    :cond_a
    iget v4, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_8

    iget-boolean v4, v5, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v17

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v4, :cond_8

    if-nez v10, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v18

    goto :goto_2
.end method

.method public endNalUnit(JI)V
    .locals 7
    .param p1, "position"    # J
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v4, p1, v4

    long-to-int v0, v4

    .local v0, "nalUnitLength":I
    add-int v3, p3, v0

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .end local v0    # "nalUnitLength":I
    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return-void
.end method

.method public needsSpsPps()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public putPps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;)V
    .locals 2
    .param p1, "ppsData"    # Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public putSps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;)V
    .locals 2
    .param p1, "spsData"    # Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    return-void
.end method

.method public startNalUnit(JIJ)V
    .locals 4
    .param p1, "position"    # J
    .param p3, "type"    # I
    .param p4, "pesTimeUs"    # J

    .prologue
    const/4 v3, 0x1

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eq v1, v3, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .local v0, "newSliceHeader":Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .end local v0    # "newSliceHeader":Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    :cond_2
    return-void
.end method
