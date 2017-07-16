.class public Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;
.super Lorg/telegram/messenger/support/util/SortedList$Callback;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/telegram/messenger/support/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field private final mBatchingListUpdateCallback:Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

.field final mWrappedCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/SortedList$Callback",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/util/SortedList$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/SortedList$Callback",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "wrappedCallback":Lorg/telegram/messenger/support/util/SortedList$Callback;, "Lorg/telegram/messenger/support/util/SortedList$Callback<TT2;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList$Callback;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mWrappedCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    new-instance v0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mWrappedCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;-><init>(Lorg/telegram/messenger/support/util/ListUpdateCallback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TT2;"
    .local p2, "newItem":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mWrappedCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "item1":Ljava/lang/Object;, "TT2;"
    .local p2, "item2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mWrappedCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT2;"
    .local p2, "o2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mWrappedCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public dispatchLastEvent()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method

.method public onChanged(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->onInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;, "Lorg/telegram/messenger/support/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->onRemoved(II)V

    return-void
.end method
