.class Lorg/telegram/ui/Components/HsvSelectorView$2;
.super Ljava/lang/Object;
.source "HsvSelectorView.java"

# interfaces
.implements Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HsvSelectorView;->buildUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HsvSelectorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HsvSelectorView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/HsvSelectorView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/HsvSelectorView$2;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saturationOrValueChanged(Lorg/telegram/ui/Components/HsvColorValueView;FFZ)V
    .locals 3
    .param p1, "sender"    # Lorg/telegram/ui/Components/HsvColorValueView;
    .param p2, "saturation"    # F
    .param p3, "value"    # F
    .param p4, "up"    # Z

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView$2;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/HsvSelectorView;->access$200(Lorg/telegram/ui/Components/HsvSelectorView;)Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvSelectorView$2;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/HsvSelectorView;->access$000(Lorg/telegram/ui/Components/HsvSelectorView;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView$2;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvSelectorView$2;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/HsvSelectorView;->access$000(Lorg/telegram/ui/Components/HsvSelectorView;Z)I

    move-result v1

    invoke-static {v0, v1, p4}, Lorg/telegram/ui/Components/HsvSelectorView;->access$100(Lorg/telegram/ui/Components/HsvSelectorView;IZ)V

    return-void
.end method
