.class Lorg/telegram/messenger/MessagesController$86;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadCurrentState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 4761
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$86;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 4764
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$86;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 4765
    if-nez p2, :cond_2

    move-object v1, p1

    .line 4766
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    .line 4767
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_updates_state;
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 4768
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 4769
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->seq:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 4770
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 4771
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 4772
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$86;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/MessagesController;->access$5200(Lorg/telegram/messenger/MessagesController;II)V

    .line 4771
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4774
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 4780
    .end local v0    # "a":I
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_updates_state;
    :cond_1
    :goto_1
    return-void

    .line 4776
    :cond_2
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v3, 0x191

    if-eq v2, v3, :cond_1

    .line 4777
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$86;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->loadCurrentState()V

    goto :goto_1
.end method
