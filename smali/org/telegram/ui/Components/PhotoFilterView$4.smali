.class Lorg/telegram/ui/Components/PhotoFilterView$4;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, -0x64

    const/16 v2, 0x64

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5202(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Enhance"

    const v2, 0x7f070235

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setProgress(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchToOrFromEditMode()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Highlights"

    const v2, 0x7f0702d7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Contrast"

    const v2, 0x7f07019b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Exposure"

    const v2, 0x7f070241

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Warmth"

    const v2, 0x7f07069b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Saturation"

    const v2, 0x7f070558

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Vignette"

    const v2, 0x7f070676

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Shadows"

    const v2, 0x7f0705bb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Grain"

    const v2, 0x7f0702a8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Fade"

    const v2, 0x7f070243

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Sharpen"

    const v2, 0x7f0705cb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7902(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7902(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8102(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->saveValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->saveValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->saveValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->saveValues()V

    goto/16 :goto_0
.end method
