.class Lorg/telegram/ui/AudioPlayerActivity$4;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioPlayerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/telegram/ui/AudioPlayerActivity$4;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->toggleRepeatMode()V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$4;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-static {v0}, Lorg/telegram/ui/AudioPlayerActivity;->access$200(Lorg/telegram/ui/AudioPlayerActivity;)V

    .line 275
    return-void
.end method