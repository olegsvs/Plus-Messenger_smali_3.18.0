.class Lorg/telegram/messenger/MessagesController$56$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$56;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$56;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$dialogsToReload:Ljava/util/ArrayList;

.field final synthetic val$new_dialogMessage:Ljava/util/HashMap;

.field final synthetic val$new_dialogs_dict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$56;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$56;

    .prologue
    .line 3389
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$56$2;->val$new_dialogs_dict:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$56$2;->val$new_dialogMessage:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$56$2;->val$chatsDict:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$56$2;->val$dialogsToReload:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 3392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesController;->access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    .line 3394
    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    if-nez v2, :cond_0

    .line 3395
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->loadDrafts()V

    .line 3398
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$encChats:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 3401
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$encChats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_4

    .line 3402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$encChats:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 3403
    .local v13, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_1

    iget v2, v13, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getMyLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-ge v2, v3, :cond_1

    .line 3404
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3406
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x1

    invoke-virtual {v2, v13, v3}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 3401
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3398
    .end local v10    # "a":I
    .end local v13    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3399
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 3409
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$migrate:Z

    if-nez v2, :cond_5

    .line 3410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 3412
    :cond_5
    const/4 v11, 0x0

    .line 3414
    .local v11, "added":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$migrate:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 3415
    .local v15, "lastDialogDate":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->val$new_dialogs_dict:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 3416
    .local v19, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 3417
    .local v14, "key":Ljava/lang/Long;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3418
    .local v20, "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController$56;->val$migrate:Z

    if-eqz v3, :cond_7

    if-eqz v15, :cond_7

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v3, v15, :cond_6

    .line 3421
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3422
    .local v12, "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;

    if-eqz v3, :cond_8

    .line 3423
    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    .line 3425
    :cond_8
    if-nez v12, :cond_a

    .line 3426
    const/4 v11, 0x1

    .line 3427
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3428
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->val$new_dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 3429
    .local v16, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3430
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_6

    .line 3431
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3432
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 3433
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3414
    .end local v12    # "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v14    # "key":Ljava/lang/Long;
    .end local v15    # "lastDialogDate":I
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v19    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v20    # "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3437
    .restart local v12    # "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v14    # "key":Ljava/lang/Long;
    .restart local v15    # "lastDialogDate":I
    .restart local v19    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .restart local v20    # "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    .line 3438
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3440
    :cond_b
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iput-boolean v3, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 3441
    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iput v3, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 3442
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/MessageObject;

    .line 3443
    .local v18, "oldMsg":Lorg/telegram/messenger/MessageObject;
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v3, :cond_d

    :cond_c
    if-eqz v18, :cond_d

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v3, :cond_f

    .line 3444
    :cond_d
    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lt v3, v4, :cond_6

    .line 3445
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3446
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->val$new_dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 3447
    .restart local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    if-eqz v16, :cond_e

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_e

    .line 3449
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    if-eqz v16, :cond_e

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_e

    .line 3451
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    :cond_e
    if-eqz v18, :cond_6

    .line 3455
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 3457
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3462
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->val$new_dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/MessageObject;

    .line 3463
    .local v17, "newMsg":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v3, :cond_10

    if-eqz v17, :cond_10

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v3, v4, :cond_6

    .line 3464
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_11

    .line 3467
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_11

    .line 3469
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3472
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3473
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 3474
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3481
    .end local v12    # "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v14    # "key":Ljava/lang/Long;
    .end local v17    # "newMsg":Lorg/telegram/messenger/MessageObject;
    .end local v18    # "oldMsg":Lorg/telegram/messenger/MessageObject;
    .end local v19    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v20    # "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3482
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3483
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$migrate:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->val$chatsDict:Ljava/util/HashMap;

    :goto_5
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 3485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    .line 3486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$migrate:Z

    if-nez v2, :cond_15

    .line 3487
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$56;->val$count:I

    if-eq v2, v4, :cond_19

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    if-nez v2, :cond_19

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v3, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 3488
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$fromCache:Z

    if-nez v2, :cond_15

    .line 3489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$56;->val$count:I

    if-eq v2, v4, :cond_1a

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    :goto_7
    iput-boolean v2, v3, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 3493
    :cond_15
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3495
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$migrate:Z

    if-eqz v2, :cond_1b

    .line 3496
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$offset:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 3497
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3498
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesController;->access$4502(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 3499
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3506
    :cond_16
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sget v4, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sget v5, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sget v6, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;IIIIIJ)V

    .line 3507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->val$dialogsToReload:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56$2;->val$dialogsToReload:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->access$4800(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    .line 3510
    :cond_17
    return-void

    .line 3483
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 3487
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 3489
    :cond_1a
    const/4 v2, 0x0

    goto :goto_7

    .line 3501
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->generateUpdateMessage()V

    .line 3502
    if-nez v11, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 3503
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$56$2;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$56;->val$count:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    goto :goto_8
.end method
