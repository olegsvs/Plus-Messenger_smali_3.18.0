.class Lorg/telegram/messenger/MessagesController$50;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$action:I

.field final synthetic val$dialog_id:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IJ)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$50;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$50;->val$action:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$50;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    new-instance v0, Lorg/telegram/messenger/MessagesController$50$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$50$1;-><init>(Lorg/telegram/messenger/MessagesController$50;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
