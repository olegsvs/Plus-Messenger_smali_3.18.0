.class Lorg/telegram/ui/ThemingChatActivity$3$19;
.super Ljava/lang/Object;
.source "ThemingChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingChatActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingChatActivity$3;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$3$19;->this$1:Lorg/telegram/ui/ThemingChatActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .local v0, "alpha":I
    sput p1, Lorg/telegram/ui/ActionBar/Theme;->chatSelectedMsgBGColor:I

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$3$19;->this$1:Lorg/telegram/ui/ThemingChatActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v2, "chatSelectedMsgBGColor"

    invoke-static {v1, v2, p1}, Lorg/telegram/ui/ThemingChatActivity;->access$300(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;I)V

    return-void
.end method
