.class public Lorg/telegram/ui/WallpapersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "WallpapersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private backgroundImage:Landroid/widget/ImageView;

.field private doneButton:Landroid/view/View;

.field private listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingFile:Ljava/lang/String;

.field private loadingFileObject:Ljava/io/File;

.field private loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private overrideThemeWallpaper:Z

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressView:Landroid/widget/FrameLayout;

.field private progressViewBackground:Landroid/view/View;

.field private selectedBackground:I

.field private selectedColor:I

.field private themedWallpaper:Landroid/graphics/drawable/Drawable;

.field private updater:Lorg/telegram/ui/Components/WallpaperUpdater;

.field private wallPapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;"
        }
    .end annotation
.end field

.field private wallpaperFile:Ljava/io/File;

.field private wallpappersByIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    .line 77
    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 79
    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 471
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/WallpapersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/WallpapersActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/WallpapersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/WallpapersActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->themedWallpaper:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/WallpapersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/WallpapersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/WallpapersActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/WallpapersActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity;->wallpaperFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/WallpapersActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/Components/WallpaperUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private loadWallpapers()V
    .locals 4

    .prologue
    .line 422
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;-><init>()V

    .line 423
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/WallpapersActivity$5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/WallpapersActivity$5;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 450
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/WallpapersActivity;->classGuid:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 451
    return-void
.end method

.method private processSelectedBackground()V
    .locals 15

    .prologue
    .line 294
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z

    if-nez v11, :cond_1

    .line 295
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getThemedWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    iget v12, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 298
    .local v9, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    iget v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    iget v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    const v12, 0xf4241

    if-eq v11, v12, :cond_5

    if-eqz v9, :cond_5

    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v11, :cond_5

    .line 299
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v11, Landroid/graphics/Point;->x:I

    .line 300
    .local v10, "width":I
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Point;->y:I

    .line 301
    .local v4, "height":I
    if-le v10, v4, :cond_2

    .line 302
    move v7, v10

    .line 303
    .local v7, "temp":I
    move v10, v4

    .line 304
    move v4, v7

    .line 306
    .end local v7    # "temp":I
    :cond_2
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 307
    .local v6, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v6, :cond_0

    .line 310
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    invoke-direct {v2, v11, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 313
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v5

    .line 314
    .local v5, "result":[I
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressViewBackground:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    const/4 v13, 0x0

    aget v13, v5, v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 315
    iput-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 316
    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 317
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 318
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 319
    iput-object v6, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 320
    const/4 v11, 0x0

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 321
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v6, v12, v13}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    .line 322
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 324
    .end local v5    # "result":[I
    :cond_3
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 325
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 327
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 328
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 329
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 331
    :try_start_0
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 336
    const/4 v11, 0x0

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 337
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 341
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "height":I
    .end local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v10    # "width":I
    :cond_5
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 342
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 344
    :cond_6
    iget v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    const v12, 0xf4241

    if-ne v11, v12, :cond_8

    .line 345
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const v12, 0x7f020023

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 347
    const/4 v11, 0x0

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 373
    :cond_7
    :goto_2
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 374
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 375
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 376
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 377
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 348
    :cond_8
    iget v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 350
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->wallpaperFile:Ljava/io/File;

    if-eqz v11, :cond_9

    .line 351
    iget-object v8, p0, Lorg/telegram/ui/WallpapersActivity;->wallpaperFile:Ljava/io/File;

    .line 355
    .local v8, "toFile":Ljava/io/File;
    :goto_3
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 356
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_2

    .line 353
    .end local v8    # "toFile":Ljava/io/File;
    :cond_9
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v11

    const-string/jumbo v12, "wallpaper.jpg"

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v8    # "toFile":Ljava/io/File;
    goto :goto_3

    .line 358
    :cond_a
    const v11, 0xf4241

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    .line 359
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z

    .line 360
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    goto :goto_2

    .line 363
    .end local v8    # "toFile":Ljava/io/File;
    :cond_b
    if-eqz v9, :cond_0

    .line 366
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSolid;

    if-eqz v11, :cond_7

    .line 367
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 368
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    const/high16 v11, -0x1000000

    iget v12, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->bg_color:I

    or-int/2addr v11, v12

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 370
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    iget v12, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 464
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 466
    invoke-virtual {p0}, Lorg/telegram/ui/WallpapersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 467
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 468
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v0, -0x1

    .line 110
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getThemedWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->themedWallpaper:Landroid/graphics/drawable/Drawable;

    .line 111
    new-instance v2, Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {p0}, Lorg/telegram/ui/WallpapersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/WallpapersActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/WallpapersActivity$1;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Components/WallpaperUpdater;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;)V

    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    .line 128
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 129
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 130
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "ChatBackground"

    const v5, 0x7f07015d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/WallpapersActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/WallpapersActivity$2;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 193
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 195
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual {p0}, Lorg/telegram/ui/WallpapersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200d9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 196
    .local v7, "done":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 197
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v13, v7, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    .line 198
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 199
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    iput-object v8, p0, Lorg/telegram/ui/WallpapersActivity;->fragmentView:Landroid/view/View;

    .line 201
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    .line 202
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/WallpapersActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/WallpapersActivity$3;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    .line 212
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 213
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v2, 0x33

    const/high16 v6, 0x42500000    # 52.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->progressViewBackground:Landroid/view/View;

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->progressViewBackground:Landroid/view/View;

    const v2, 0x7f02025f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->progressViewBackground:Landroid/view/View;

    const/16 v3, 0x24

    const/16 v4, 0x24

    const/16 v5, 0x11

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    .line 220
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 222
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/16 v5, 0x11

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 225
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v12, v3, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 228
    new-instance v9, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v9, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 229
    .local v9, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-virtual {v9, v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 230
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 231
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setDisallowInterceptTouchEvents(Z)V

    .line 232
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;-><init>(Lorg/telegram/ui/WallpapersActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x66

    const/16 v3, 0x53

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/WallpapersActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/WallpapersActivity$4;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 270
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 385
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v2, :cond_1

    .line 386
    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    .line 387
    .local v0, "location":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iput-object v4, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 389
    iput-object v4, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 390
    iput-object v4, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 391
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 419
    .end local v0    # "location":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-ne p1, v2, :cond_2

    .line 395
    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    .line 396
    .restart local v0    # "location":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 398
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 401
    iput-object v4, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 402
    iput-object v4, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 403
    iput-object v4, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_0

    .line 405
    .end local v0    # "location":Ljava/lang/String;
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoaded:I

    if-ne p1, v2, :cond_0

    .line 406
    aget-object v2, p2, v5

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    .line 407
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 408
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 409
    .local v1, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 411
    .end local v1    # "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    if-eqz v2, :cond_4

    .line 412
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 414
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 415
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    .line 417
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->loadWallpapers()V

    goto :goto_0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 527
    const/4 v0, 0x7

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v9, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string/jumbo v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string/jumbo v7, "actionBarDefaultIcon"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string/jumbo v7, "actionBarDefaultTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string/jumbo v7, "actionBarDefaultSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string/jumbo v7, "listSelectorSDK21"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    return-object v8
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/WallpaperUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 278
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 87
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 88
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 89
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 91
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "selectedBackground"

    const v2, 0xf4241

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    .line 93
    const-string/jumbo v1, "overrideThemeWallpaper"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z

    .line 94
    const-string/jumbo v1, "selectedColor"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 95
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getWallpapers()V

    .line 96
    const/4 v1, 0x1

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->cleanup()V

    .line 103
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 104
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 105
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 459
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    .line 460
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->updateTheme()V

    .line 461
    :cond_1
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 290
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperUpdater;->setCurrentPicturePath(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 282
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WallpaperUpdater;->getCurrentPicturePath()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "currentPicturePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    return-void
.end method
