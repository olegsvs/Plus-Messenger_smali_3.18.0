.class Lorg/telegram/ui/ThemeActivity$2$4;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$2;

.field final synthetic val$alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$2;Landroid/widget/EditText;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemeActivity$2;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$2$4;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 155
    iget-object v5, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 156
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 157
    .local v4, "vibrator":Landroid/os/Vibrator;
    if-eqz v4, :cond_0

    .line 158
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 160
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$editText:Landroid/widget/EditText;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 180
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    new-instance v3, Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {v3}, Lorg/telegram/ui/Components/ThemeEditorView;-><init>()V

    .line 164
    .local v3, "themeEditorView":Lorg/telegram/ui/Components/ThemeEditorView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".attheme"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/ThemeActivity$2$4;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Lorg/telegram/ui/Components/ThemeEditorView;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 166
    invoke-static {v1, v9}, Lorg/telegram/ui/ActionBar/Theme;->saveCurrentTheme(Ljava/lang/String;Z)V

    .line 167
    iget-object v5, p0, Lorg/telegram/ui/ThemeActivity$2$4;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemeActivity;->access$000(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 168
    iget-object v5, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 170
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mainconfig"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 171
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "themehint"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 174
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "themehint"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/ThemeActivity$2$4;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "CreateNewThemeHelp"

    const v7, 0x7f0701b0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
