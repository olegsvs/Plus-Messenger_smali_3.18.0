.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;
.super Lorg/telegram/tgnet/TLRPC$PhoneCall;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallAccepted"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7056
    const v0, 0x6d003d3f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7055
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7060
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->id:J

    .line 7061
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->access_hash:J

    .line 7062
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->date:I

    .line 7063
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->admin_id:I

    .line 7064
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->participant_id:I

    .line 7065
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->g_b:[B

    .line 7066
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 7067
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7070
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7071
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7072
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7073
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7074
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->admin_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7075
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->participant_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7076
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->g_b:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 7077
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7078
    return-void
.end method