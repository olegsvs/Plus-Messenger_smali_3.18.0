.class Lorg/telegram/ui/PasscodeActivity$8;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$8;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$8;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$500(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$8;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$500(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$8;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$500(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
