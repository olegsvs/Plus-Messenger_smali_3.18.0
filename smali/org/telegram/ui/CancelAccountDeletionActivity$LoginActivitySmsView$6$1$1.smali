.class Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1$1;
.super Ljava/lang/Object;
.source "CancelAccountDeletionActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1$1;->this$3:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1$1$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1$1$1;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
