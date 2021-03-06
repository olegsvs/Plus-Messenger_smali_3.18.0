.class public Lorg/telegram/ui/TwoStepVerificationActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private abortPasswordRow:I

.field private bottomButton:Landroid/widget/TextView;

.field private bottomTextView:Landroid/widget/TextView;

.field private changePasswordRow:I

.field private changeRecoveryEmailRow:I

.field private currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

.field private currentPasswordHash:[B

.field private destroyed:Z

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private email:Ljava/lang/String;

.field private emailOnly:Z

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private firstPassword:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private passwordEditText:Landroid/widget/EditText;

.field private passwordEmailVerifyDetailRow:I

.field private passwordEnabledDetailRow:I

.field private passwordEntered:Z

.field private passwordSetState:I

.field private passwordSetupDetailRow:I

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private rowCount:I

.field private scrollView:Landroid/widget/ScrollView;

.field private setPasswordDetailRow:I

.field private setPasswordRow:I

.field private setRecoveryEmailRow:I

.field private shadowRow:I

.field private shortPollRunnable:Ljava/lang/Runnable;

.field private titleTextView:Landroid/widget/TextView;

.field private turnPasswordOffRow:I

.field private type:I

.field private waitingForEmail:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    .line 103
    iput p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    .line 104
    if-nez p1, :cond_0

    .line 105
    invoke-direct {p0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->processDone()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TwoStepVerificationActivity;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emailOnly:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TwoStepVerificationActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TwoStepVerificationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z

    return p1
.end method

.method static synthetic access$1902(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$account_Password;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/TwoStepVerificationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/TwoStepVerificationActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->needShowProgress()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/TwoStepVerificationActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->setNewPassword(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I

    return v0
.end method

.method private isValidEmail(Ljava/lang/String;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v2

    .line 613
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 614
    .local v1, "dot":I
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 615
    .local v0, "dog":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    if-lt v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadPasswordInfo(Z)V
    .locals 4
    .param p1, "silent"    # Z

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->notifyDataSetChanged()V

    .line 407
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 408
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationActivity$7;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity$7;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 444
    return-void
.end method

.method private needHideProgress()V
    .locals 2

    .prologue
    .line 598
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez v1, :cond_0

    .line 607
    :goto_0
    return-void

    .line 602
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private needShowProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 587
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-string/jumbo v1, "Loading"

    const v2, 0x7f070356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onPasscodeError(Z)V
    .locals 4
    .param p1, "clear"    # Z

    .prologue
    .line 896
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 907
    :goto_0
    return-void

    .line 899
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 900
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    .line 901
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 903
    :cond_1
    if-eqz p1, :cond_2

    .line 904
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0
.end method

.method private processDone()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 742
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-nez v6, :cond_2

    .line 743
    iget-boolean v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z

    if-nez v6, :cond_0

    .line 744
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 745
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 746
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    .line 893
    .end local v3    # "oldPassword":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 749
    .restart local v3    # "oldPassword":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 751
    .local v4, "oldPasswordBytes":[B
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 756
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->needShowProgress()V

    .line 757
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    array-length v7, v4

    add-int/2addr v6, v7

    new-array v2, v6, [B

    .line 758
    .local v2, "hash":[B
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v7, v7

    invoke-static {v6, v9, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v6, v6

    array-length v7, v4

    invoke-static {v4, v9, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v7, v2

    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v8, v8

    invoke-static {v6, v9, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 762
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;-><init>()V

    .line 763
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;
    array-length v6, v2

    invoke-static {v2, v9, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;->current_password_hash:[B

    .line 764
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/TwoStepVerificationActivity$10;

    invoke-direct {v7, p0, v5}, Lorg/telegram/ui/TwoStepVerificationActivity$10;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;)V

    invoke-virtual {v6, v5, v7, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 752
    .end local v2    # "hash":[B
    .end local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 797
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "oldPasswordBytes":[B
    :cond_2
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-ne v6, v10, :cond_0

    .line 798
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-nez v6, :cond_4

    .line 799
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 800
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto :goto_0

    .line 803
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "ReEnterYourPasscode"

    const v8, 0x7f07050a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    .line 805
    invoke-direct {p0, v10}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordSetState(I)V

    goto/16 :goto_0

    .line 806
    :cond_4
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v6, v10, :cond_6

    .line 807
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 809
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "PasswordDoNotMatch"

    const v8, 0x7f07048a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 813
    :goto_2
    invoke-direct {p0, v10}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto/16 :goto_0

    .line 810
    :catch_1
    move-exception v1

    .line 811
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 816
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, v8}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordSetState(I)V

    goto/16 :goto_0

    .line 817
    :cond_6
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v6, v8, :cond_9

    .line 818
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->hint:Ljava/lang/String;

    .line 819
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->hint:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 821
    :try_start_2
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "PasswordAsHintError"

    const v8, 0x7f070488

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 825
    :goto_3
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto/16 :goto_0

    .line 822
    :catch_2
    move-exception v1

    .line 823
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 828
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->has_recovery:Z

    if-nez v6, :cond_8

    .line 829
    invoke-direct {p0, v11}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordSetState(I)V

    goto/16 :goto_0

    .line 831
    :cond_8
    const-string/jumbo v6, ""

    iput-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    .line 832
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->setNewPassword(Z)V

    goto/16 :goto_0

    .line 834
    :cond_9
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v6, v11, :cond_b

    .line 835
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    .line 836
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->isValidEmail(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 837
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto/16 :goto_0

    .line 840
    :cond_a
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->setNewPassword(Z)V

    goto/16 :goto_0

    .line 841
    :cond_b
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 842
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_c

    .line 844
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto/16 :goto_0

    .line 847
    :cond_c
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;-><init>()V

    .line 848
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;
    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->code:Ljava/lang/String;

    .line 849
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/TwoStepVerificationActivity$11;

    invoke-direct {v7, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$11;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v6, v5, v7, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0
.end method

.method private setNewPassword(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/4 v7, 0x0

    .line 627
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;-><init>()V

    .line 628
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->current_password_hash:[B

    .line 629
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    .line 630
    if-eqz p1, :cond_2

    .line 631
    iget-boolean v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v5, :cond_1

    .line 632
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const/4 v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 633
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const-string/jumbo v6, ""

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    .line 634
    new-array v5, v7, [B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->current_password_hash:[B

    .line 666
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->needShowProgress()V

    .line 667
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/TwoStepVerificationActivity$9;

    invoke-direct {v6, p0, p1, v4}, Lorg/telegram/ui/TwoStepVerificationActivity$9;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;ZLorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;)V

    const/16 v7, 0xa

    invoke-virtual {v5, v4, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 739
    return-void

    .line 636
    :cond_1
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const/4 v6, 0x3

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 637
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const-string/jumbo v6, ""

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    .line 638
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    new-array v6, v7, [B

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    .line 639
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    new-array v6, v7, [B

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_salt:[B

    .line 640
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const-string/jumbo v6, ""

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    goto :goto_0

    .line 643
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 644
    const/4 v2, 0x0

    .line 646
    .local v2, "newPasswordBytes":[B
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 651
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    .line 652
    .local v3, "new_salt":[B
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v2

    add-int/2addr v5, v6

    new-array v1, v5, [B

    .line 653
    .local v1, "hash":[B
    array-length v5, v3

    invoke-static {v3, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    array-length v5, v3

    array-length v6, v2

    invoke-static {v2, v7, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    array-length v5, v1

    array-length v6, v3

    sub-int/2addr v5, v6

    array-length v6, v3

    invoke-static {v3, v7, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 657
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->hint:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    .line 658
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    array-length v6, v1

    invoke-static {v1, v7, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    .line 659
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_salt:[B

    .line 661
    .end local v1    # "hash":[B
    .end local v2    # "newPasswordBytes":[B
    .end local v3    # "new_salt":[B
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 662
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 663
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    goto/16 :goto_0

    .line 647
    .restart local v2    # "newPasswordBytes":[B
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setPasswordSetState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x4

    .line 447
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 496
    :goto_0
    return-void

    .line 450
    :cond_0
    iput p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    .line 451
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-nez v2, :cond_3

    .line 452
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "YourPassword"

    const v3, 0x7f0706c9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PleaseEnterFirstPassword"

    const v3, 0x7f0704e8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 459
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PleaseEnterPassword"

    const v3, 0x7f0704e9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 462
    :cond_3
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v2, v5, :cond_4

    .line 463
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "YourPassword"

    const v3, 0x7f0706c9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PleaseReEnterPassword"

    const v3, 0x7f0704ea

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 466
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 467
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 469
    :cond_4
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 470
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PasswordHint"

    const v3, 0x7f07048c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PasswordHintText"

    const v3, 0x7f07048d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 473
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 474
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 476
    :cond_5
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 477
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "RecoveryEmail"

    const v4, 0x7f07050d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "YourEmail"

    const v4, 0x7f0706c1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 480
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 481
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 482
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emailOnly:Z

    if-eqz v3, :cond_6

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    .line 484
    :cond_7
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v2, v0, :cond_1

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PasswordRecovery"

    const v3, 0x7f07048e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PasswordCode"

    const v3, 0x7f070489

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "RestoreEmailSentInfo"

    const v3, 0x7f070539

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const-string/jumbo v2, "RestoreEmailTrouble"

    const v3, 0x7f07053a

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 619
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 620
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 621
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 622
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 623
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 624
    return-void
.end method

.method private updateRows()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 499
    iput v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    .line 500
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I

    .line 501
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I

    .line 502
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I

    .line 503
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I

    .line 504
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I

    .line 505
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I

    .line 506
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I

    .line 507
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I

    .line 508
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I

    .line 509
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I

    .line 510
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I

    .line 511
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v0, :cond_5

    .line 513
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z

    if-eqz v0, :cond_4

    .line 514
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I

    .line 515
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I

    .line 516
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I

    .line 537
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->notifyDataSetChanged()V

    .line 540
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z

    if-eqz v0, :cond_8

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 547
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    :cond_3
    :goto_1
    return-void

    .line 518
    :cond_4
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I

    .line 519
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I

    goto :goto_0

    .line 521
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;

    if-eqz v0, :cond_0

    .line 522
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I

    .line 523
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_recovery:Z

    if-eqz v0, :cond_6

    .line 525
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I

    .line 529
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z

    if-eqz v0, :cond_7

    .line 530
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I

    goto/16 :goto_0

    .line 527
    :cond_6
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I

    goto :goto_2

    .line 532
    :cond_7
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I

    goto/16 :goto_0

    .line 555
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_9

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 561
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const-string/jumbo v1, "ForgotPassword"

    const v2, 0x7f070255

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->hint:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->hint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 573
    :goto_3
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$8;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    .line 571
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 156
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->fragmentView:Landroid/view/View;

    .line 157
    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/FrameLayout;

    .line 158
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    const-string/jumbo v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 161
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f0200d9

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 163
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 168
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 175
    iget-object v11, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x26

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 190
    iget-object v11, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/16 v2, 0x33

    const/16 v3, 0x28

    const/16 v4, 0x20

    const/16 v5, 0x28

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$2;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$3;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 218
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "YourEmailInfo"

    const v2, 0x7f0706c4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v11, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    :goto_1
    or-int/lit8 v2, v2, 0x30

    const/16 v3, 0x28

    const/16 v4, 0x1e

    const/16 v5, 0x28

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 226
    .local v9, "linearLayout2":Landroid/widget/LinearLayout;
    const/16 v0, 0x50

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 227
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    :goto_2
    or-int/lit8 v0, v0, 0x50

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const-string/jumbo v1, "YourEmailSkip"

    const v2, 0x7f0706c5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 235
    iget-object v11, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_3
    or-int/lit8 v2, v2, 0x50

    const/16 v3, 0x28

    const/4 v4, 0x0

    const/16 v5, 0x28

    const/16 v6, 0xe

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$4;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-nez v0, :cond_5

    .line 313
    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 316
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$5;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 354
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "TwoStepVerification"

    const v2, 0x7f070641

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "PleaseEnterCurrentPassword"

    const v2, 0x7f0704e7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_0
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 221
    .end local v9    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_1
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 223
    :cond_2
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 232
    .restart local v9    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_3
    const/4 v0, 0x3

    goto/16 :goto_2

    .line 235
    :cond_4
    const/4 v2, 0x3

    goto/16 :goto_3

    .line 358
    :cond_5
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 359
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordSetState(I)V

    goto :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 367
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    if-ne p1, v0, :cond_1

    .line 368
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    .line 369
    aget-object v0, p2, v1

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    .line 371
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V

    .line 372
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V

    .line 374
    :cond_1
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 1000
    const/16 v0, 0x15

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteRedText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    return-object v9
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 112
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V

    .line 113
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 116
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 122
    iget v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-nez v1, :cond_1

    .line 123
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 126
    iput-object v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    .line 128
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->destroyed:Z

    .line 130
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_2

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iput-object v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 138
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->classGuid:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 139
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 378
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 379
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 380
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$6;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 391
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 395
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 398
    :cond_0
    return-void
.end method
