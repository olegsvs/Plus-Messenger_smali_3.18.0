.class Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader$2;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->executeBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;

    .prologue
    .line 288
    iput-object p1, p0, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader$2;->this$0:Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader$2;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 292
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "content://com.android.badge/badge"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "setAppBadgeCount"

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader$2;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
