.class public Lorg/telegram/ui/ThemingProfileActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemingProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;
    }
.end annotation


# static fields
.field public static final CENTER:I


# instance fields
.field private adminStarColorRow:I

.field private avatarRadiusRow:I

.field private creatorStarColorRow:I

.field private headerAvatarRadiusRow:I

.field private headerColorRow:I

.field private headerGradientColorRow:I

.field private headerGradientRow:I

.field private headerIconsColorRow:I

.field private headerSection2Row:I

.field private iconsColorRow:I

.field private listAdapter:Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private nameColorRow:I

.field private nameSizeRow:I

.field private onlineColorRow:I

.field private rowColorRow:I

.field private rowCount:I

.field private rowGradientColorRow:I

.field private rowGradientListCheckRow:I

.field private rowGradientRow:I

.field private rowsSection2Row:I

.field private rowsSectionRow:I

.field private showPrefix:Z

.field private statusColorRow:I

.field private statusSizeRow:I

.field private summaryColorRow:I

.field private titleColorRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 638
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemingProfileActivity;)Z
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ThemingProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/telegram/ui/ThemingProfileActivity;->showPrefix:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemingProfileActivity;)Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->listAdapter:Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->creatorStarColorRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->adminStarColorRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->nameColorRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->statusColorRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->nameSizeRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->statusSizeRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowColorRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowGradientColorRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerAvatarRadiusRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->avatarRadiusRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerColorRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->titleColorRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->summaryColorRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->onlineColorRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ThemingProfileActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingProfileActivity;->resetPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemingProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemingProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowGradientListCheckRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerSection2Row:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowsSection2Row:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemingProfileActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemingProfileActivity;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowsSectionRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerGradientRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemingProfileActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowGradientRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerGradientColorRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerIconsColorRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemingProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->iconsColorRow:I

    return v0
.end method

.method private commitInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 581
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 582
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 583
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 588
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingProfileActivity;->refreshTheme()V

    .line 589
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 636
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemingProfileActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemingProfileActivity$5;-><init>(Lorg/telegram/ui/ThemingProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private refreshTheme()V
    .locals 2

    .prologue
    .line 592
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPlusTheme()V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 596
    :cond_0
    return-void
.end method

.method private resetPref(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 569
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 570
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 571
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 572
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 574
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 577
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingProfileActivity;->refreshTheme()V

    .line 578
    return-void
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 608
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 610
    invoke-virtual {p0}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 611
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 612
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 135
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 138
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 140
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 143
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "ProfileScreen"

    const v5, 0x7f0704ff

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingProfileActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingProfileActivity$1;-><init>(Lorg/telegram/ui/ThemingProfileActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 154
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingProfileActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingProfileActivity$2;-><init>(Lorg/telegram/ui/ThemingProfileActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemingProfileActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listAdapter:Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;

    .line 168
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 171
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    .line 173
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 174
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 176
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 179
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 180
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 183
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 184
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 185
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity;->listAdapter:Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingProfileActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingProfileActivity$3;-><init>(Lorg/telegram/ui/ThemingProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 531
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingProfileActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingProfileActivity$4;-><init>(Lorg/telegram/ui/ThemingProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 557
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 564
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ThemingProfileActivity;->updateTheme()V

    .line 565
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 559
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 560
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 561
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 617
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 618
    invoke-direct {p0}, Lorg/telegram/ui/ThemingProfileActivity;->fixLayout()V

    .line 619
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 96
    iput v3, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    .line 97
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerSection2Row:I

    .line 98
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerColorRow:I

    .line 99
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerGradientRow:I

    .line 100
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerGradientColorRow:I

    .line 101
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerIconsColorRow:I

    .line 102
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->headerAvatarRadiusRow:I

    .line 104
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->nameSizeRow:I

    .line 105
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->nameColorRow:I

    .line 106
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->statusSizeRow:I

    .line 107
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->statusColorRow:I

    .line 109
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowsSectionRow:I

    .line 110
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowsSection2Row:I

    .line 111
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowColorRow:I

    .line 112
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowGradientRow:I

    .line 113
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowGradientColorRow:I

    .line 115
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->avatarRadiusRow:I

    .line 116
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->titleColorRow:I

    .line 117
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->summaryColorRow:I

    .line 118
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->onlineColorRow:I

    .line 119
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->iconsColorRow:I

    .line 120
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->creatorStarColorRow:I

    .line 121
    iget v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingProfileActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->adminStarColorRow:I

    .line 122
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "profileShowPrefix"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ThemingProfileActivity;->showPrefix:Z

    .line 124
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 600
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->listAdapter:Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity;->listAdapter:Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 604
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingProfileActivity;->fixLayout()V

    .line 605
    return-void
.end method
