.class public Lorg/telegram/ui/ThemingDrawerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemingDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;
    }
.end annotation


# static fields
.field public static final CENTER:I


# instance fields
.field private avatarColorRow:I

.field private avatarRadiusRow:I

.field private avatarSizeRow:I

.field private centerAvatarRow:I

.field private drawer:Z

.field private headerBackgroundCheckRow:I

.field private headerColorRow:I

.field private headerGradientColorRow:I

.field private headerGradientRow:I

.field private headerSection2Row:I

.field private hideBackgroundShadowRow:I

.field private iconColorRow:I

.field private listAdapter:Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;

.field private listColorRow:I

.field private listDividerColorRow:I

.field private listView:Landroid/widget/ListView;

.field private nameColorRow:I

.field private nameSizeRow:I

.field private optionColorRow:I

.field private optionSizeRow:I

.field private phoneColorRow:I

.field private phoneSizeRow:I

.field private player:Z

.field private rowCount:I

.field private rowGradientColorRow:I

.field private rowGradientListCheckRow:I

.field private rowGradientRow:I

.field private rowsSection2Row:I

.field private rowsSectionRow:I

.field private showPrefix:Z

.field private versionColorRow:I

.field private versionSizeRow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 99
    iput-boolean v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->player:Z

    .line 100
    iput-boolean v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->drawer:Z

    .line 757
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemingDrawerActivity;)Z
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->showPrefix:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemingDrawerActivity;)Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listAdapter:Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listColorRow:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->player:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientColorRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientListCheckRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listDividerColorRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->iconColorRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->optionColorRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->versionColorRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->avatarColorRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerColorRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->nameColorRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->phoneColorRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->avatarRadiusRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->avatarSizeRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->nameSizeRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->phoneSizeRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->optionSizeRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->versionSizeRow:I

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->drawer:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemingDrawerActivity;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingDrawerActivity;->resetPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ThemingDrawerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ThemingDrawerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerSection2Row:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowsSection2Row:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowsSectionRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemingDrawerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientColorRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerBackgroundCheckRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->hideBackgroundShadowRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->centerAvatarRow:I

    return v0
.end method

.method private commitInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 699
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 700
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 701
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 702
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 703
    iget-object v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 706
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingDrawerActivity;->refreshTheme()V

    .line 707
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemingDrawerActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemingDrawerActivity$5;-><init>(Lorg/telegram/ui/ThemingDrawerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private refreshTheme()V
    .locals 2

    .prologue
    .line 710
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPlusTheme()V

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 714
    :cond_0
    return-void
.end method

.method private resetInt(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 689
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 690
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 691
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 692
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 693
    iget-object v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 694
    iget-object v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 696
    :cond_0
    return-void
.end method

.method private resetPref(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 678
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 679
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 680
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 681
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 682
    iget-object v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 683
    iget-object v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 685
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingDrawerActivity;->refreshTheme()V

    .line 686
    return-void
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 726
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 727
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 728
    invoke-virtual {p0}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 729
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 730
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 152
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 155
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 157
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 160
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "NavigationDrawer"

    const v5, 0x7f0703b5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingDrawerActivity$1;-><init>(Lorg/telegram/ui/ThemingDrawerActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 171
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingDrawerActivity$2;-><init>(Lorg/telegram/ui/ThemingDrawerActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v3, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemingDrawerActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listAdapter:Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;

    .line 186
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 189
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    .line 191
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 192
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 194
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 197
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 198
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 201
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 202
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listAdapter:Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingDrawerActivity$3;-><init>(Lorg/telegram/ui/ThemingDrawerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 591
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingDrawerActivity$4;-><init>(Lorg/telegram/ui/ThemingDrawerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 666
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 673
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ThemingDrawerActivity;->updateTheme()V

    .line 674
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 668
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 669
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 670
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 735
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 736
    invoke-direct {p0}, Lorg/telegram/ui/ThemingDrawerActivity;->fixLayout()V

    .line 737
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 106
    iput v3, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    .line 107
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerSection2Row:I

    .line 108
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerBackgroundCheckRow:I

    .line 109
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->hideBackgroundShadowRow:I

    .line 110
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerColorRow:I

    .line 111
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientRow:I

    .line 112
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientColorRow:I

    .line 113
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->avatarColorRow:I

    .line 114
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->avatarRadiusRow:I

    .line 115
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->avatarSizeRow:I

    .line 116
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->nameColorRow:I

    .line 117
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->nameSizeRow:I

    .line 118
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->phoneColorRow:I

    .line 119
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->phoneSizeRow:I

    .line 120
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->centerAvatarRow:I

    .line 122
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowsSectionRow:I

    .line 123
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowsSection2Row:I

    .line 124
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listColorRow:I

    .line 125
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientRow:I

    .line 126
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientColorRow:I

    .line 128
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listDividerColorRow:I

    .line 129
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->iconColorRow:I

    .line 130
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->optionColorRow:I

    .line 131
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->optionSizeRow:I

    .line 132
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->versionColorRow:I

    .line 133
    iget v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->versionSizeRow:I

    .line 134
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "drawerShowPrefix"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ThemingDrawerActivity;->showPrefix:Z

    .line 136
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 142
    iget-boolean v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->player:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 145
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->drawer:Z

    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 148
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 718
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listAdapter:Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity;->listAdapter:Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 722
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingDrawerActivity;->fixLayout()V

    .line 723
    return-void
.end method
