.class Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickersAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation


# instance fields
.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private positionsToSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private stickersPerRow:I

.field private stickersRowCount:I

.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;

.field private totalItems:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Ljava/util/HashMap;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickersAlert;->access$400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v5

    .local v5, "width":I
    if-nez v5, :cond_0

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v7, Landroid/graphics/Point;->x:I

    :cond_0
    const/high16 v7, 0x42900000    # 72.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    div-int v7, v5, v7

    iput v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickersAlert;->access$3700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iput v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iput v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .local v3, "pack":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v6, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    int-to-double v6, v6

    iget-object v8, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Ljava/util/HashMap;

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    div-int v4, v6, v7

    .local v4, "startRow":I
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_2
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "b":I
    .end local v2    # "count":I
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "count":I
    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_3
    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    mul-int/2addr v6, v2

    if-ge v1, v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Ljava/util/HashMap;

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    goto/16 :goto_1

    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "count":I
    .end local v3    # "pack":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .end local v4    # "startRow":I
    .end local v5    # "width":I
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_6
    iput v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    :cond_7
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .local v1, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v3, v1, v6}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_0

    .end local v1    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :pswitch_1
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v4, 0x42a40000    # 82.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .local v2, "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .local v0, "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    invoke-virtual {v0, v2, v6}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    goto :goto_0

    .end local v0    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .end local v2    # "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_0
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/StickerEmojiCell;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickersAlert;->access$1000(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;-><init>(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
