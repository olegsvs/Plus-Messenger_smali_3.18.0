.class Lorg/telegram/ui/ArticleViewer$33$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$33;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$33;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$33;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$33;

    .prologue
    .line 5785
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$33$1;->this$1:Lorg/telegram/ui/ArticleViewer$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5788
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 5789
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$33$1;->this$1:Lorg/telegram/ui/ArticleViewer$33;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$33;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5790
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$33$1;->this$1:Lorg/telegram/ui/ArticleViewer$33;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$33;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5791
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$33$1;->this$1:Lorg/telegram/ui/ArticleViewer$33;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$33;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$11402(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5793
    :cond_0
    return-void
.end method
