.class Lorg/telegram/ui/ChannelEditTypeActivity$4;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditTypeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$4;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$4;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$500(Lorg/telegram/ui/ChannelEditTypeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$4;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$502(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$4;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$900(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    goto :goto_0
.end method
