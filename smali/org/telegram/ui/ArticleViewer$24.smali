.class Lorg/telegram/ui/ArticleViewer$24;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->close(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 2184
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2187
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2195
    :goto_0
    return-void

    .line 2190
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 2191
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2193
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer;->access$5702(Lorg/telegram/ui/ArticleViewer;I)I

    .line 2194
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2100(Lorg/telegram/ui/ArticleViewer;)V

    goto :goto_0
.end method
