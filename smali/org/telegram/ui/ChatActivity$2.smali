.class Lorg/telegram/ui/ChatActivity$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    if-ltz p3, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt p3, v9, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .local v3, "count":I
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .local v6, "result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v3, :cond_0

    const/4 v4, 0x0

    .local v4, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .local v7, "view":Landroid/view/View;
    instance-of v9, v7, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v9, :cond_2

    move-object v1, v7

    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .local v1, "cell":Lorg/telegram/ui/Cells/ContextLinkCell;

    move-result-object v9

    if-ne v9, v6, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    .end local v1    # "cell":Lorg/telegram/ui/Cells/ContextLinkCell;
    :cond_2
    if-eqz v4, :cond_4

    const/4 v9, 0x2

    new-array v2, v9, [I

    .local v2, "coords":[I
    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v5, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v5}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .local v5, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v9, v2, v8

    iput v9, v5, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 v9, 0x1

    aget v9, v2, v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_3

    :goto_2
    sub-int v8, v9, v8

    iput v8, v5, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    iput-object v8, v5, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    iput-object v4, v5, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v5, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v8

    iput v8, v5, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    goto :goto_0

    :cond_3
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    .end local v2    # "coords":[I
    .end local v5    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0



    goto :goto_0
.end method

.method public setPhotoChecked(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 0

    .prologue
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    return-void
.end method
