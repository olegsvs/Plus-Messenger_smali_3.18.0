.class Lorg/telegram/messenger/MessagesStorage$17$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$17;

.field final synthetic val$wallPapers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$17;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$17;

    .prologue
    .line 1237
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$17$1;->this$1:Lorg/telegram/messenger/MessagesStorage$17;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$17$1;->val$wallPapers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1240
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoaded:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$17$1;->val$wallPapers:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1241
    return-void
.end method
