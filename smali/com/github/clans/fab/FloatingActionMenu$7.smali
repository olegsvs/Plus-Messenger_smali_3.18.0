.class Lcom/github/clans/fab/FloatingActionMenu$7;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$7;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$7;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->access$202(Lcom/github/clans/fab/FloatingActionMenu;Z)Z

    .line 729
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$7;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionMenu;->access$300(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$7;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionMenu;->access$300(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;->onMenuToggle(Z)V

    .line 732
    :cond_0
    return-void
.end method
