.class Lorg/telegram/ui/PrivacyControlActivity$2$1;
.super Ljava/lang/Object;
.source "PrivacyControlActivity.java"

# interfaces
.implements Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PrivacyControlActivity$2;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iput p2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectUsers(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->val$position:I

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 214
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1202(Lorg/telegram/ui/PrivacyControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 215
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "a":I
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1302(Lorg/telegram/ui/PrivacyControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 220
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$700(Lorg/telegram/ui/PrivacyControlActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$802(Lorg/telegram/ui/PrivacyControlActivity;I)I

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$2$1;->this$1:Lorg/telegram/ui/PrivacyControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1400(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 227
    return-void
.end method
