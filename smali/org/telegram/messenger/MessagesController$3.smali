.class Lorg/telegram/messenger/MessagesController$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$config:Lorg/telegram/tgnet/TLRPC$TL_config;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 347
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 351
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 352
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 353
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_big_size:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    .line 354
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lorg/telegram/messenger/MessagesController;->access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 355
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 356
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    .line 357
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 358
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    .line 359
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v0, v7, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    .line 360
    .local v0, "callsOld":Z
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->phonecalls_enabled:Z

    iput-boolean v8, v7, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    .line 361
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    iput-object v8, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 362
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 363
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 365
    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const-string/jumbo v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 366
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 370
    :cond_1
    :goto_0
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    .line 371
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    .line 372
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    .line 373
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    .line 374
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_dialogs_count_max:I

    iput v8, v7, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    .line 376
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mainconfig"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 377
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 378
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "maxGroupCount"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string/jumbo v7, "maxMegagroupCount"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string/jumbo v7, "groupBigSize"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string/jumbo v7, "maxEditTime"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string/jumbo v7, "ratingDecay"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 384
    const-string/jumbo v7, "maxRecentGifsCount"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string/jumbo v7, "maxRecentStickersCount"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string/jumbo v7, "callReceiveTimeout"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 387
    const-string/jumbo v7, "callRingTimeout"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 388
    const-string/jumbo v7, "callConnectTimeout"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 389
    const-string/jumbo v7, "callPacketTimeout"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 390
    const-string/jumbo v7, "callsEnabled"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v8, v8, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 391
    const-string/jumbo v7, "linkPrefix"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string/jumbo v7, "maxPinnedDialogsCount"

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 394
    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 395
    .local v1, "data":Lorg/telegram/tgnet/SerializedData;
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 396
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    .line 397
    .local v2, "disabledFeature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    invoke-virtual {v2, v1}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 403
    .end local v1    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v2    # "disabledFeature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    :catch_0
    move-exception v3

    .line 404
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "disabledFeatures"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 407
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eq v7, v0, :cond_3

    .line 410
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 412
    :cond_3
    return-void

    .line 367
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const-string/jumbo v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 368
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 399
    .restart local v1    # "data":Lorg/telegram/tgnet/SerializedData;
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 400
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 401
    const-string/jumbo v7, "disabledFeatures"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
