.class Lorg/telegram/ui/CacheControlActivity$4;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 338
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 341
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1300(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_2

    .line 345
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    .local v1, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string/jumbo v10, "Weeks"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "Months"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "KeepMediaForever"

    const v11, 0x7f070314

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    new-instance v9, Lorg/telegram/ui/CacheControlActivity$4$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/CacheControlActivity$4$1;-><init>(Lorg/telegram/ui/CacheControlActivity$4;)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 363
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/CacheControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 364
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1400(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_3

    .line 365
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v8, "AppName"

    const v9, 0x7f070078

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 367
    const-string/jumbo v8, "Cancel"

    const v9, 0x7f0700f0

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 368
    const-string/jumbo v8, "LocalDatabaseClear"

    const v9, 0x7f07035a

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 369
    const-string/jumbo v8, "CacheClear"

    const v9, 0x7f0700db

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/CacheControlActivity$4$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/CacheControlActivity$4$2;-><init>(Lorg/telegram/ui/CacheControlActivity$4;)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 473
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/CacheControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 474
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1600(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_0

    .line 475
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$900(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 478
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    .local v1, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 480
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 481
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 482
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 483
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v8, 0x7

    if-ge v0, v8, :cond_c

    .line 484
    const-wide/16 v6, 0x0

    .line 485
    .local v6, "size":J
    const/4 v5, 0x0

    .line 486
    .local v5, "name":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 487
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 488
    const-string/jumbo v8, "LocalPhotoCache"

    const v9, 0x7f07035f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 511
    :cond_4
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_b

    .line 512
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1200(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v8

    const/4 v9, 0x1

    aput-boolean v9, v8, v0

    .line 513
    new-instance v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 514
    .local v3, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 515
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->prefSectionColor:I

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setValueColor(I)V

    .line 518
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->prefSectionColor:I

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCheckColor(I)V

    .line 520
    const/4 v8, -0x1

    const/16 v9, 0x30

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v3, v5, v8, v9, v10}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 522
    const-string/jumbo v8, "dialogTextBlack"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 523
    new-instance v8, Lorg/telegram/ui/CacheControlActivity$4$3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/CacheControlActivity$4$3;-><init>(Lorg/telegram/ui/CacheControlActivity$4;)V

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    .end local v3    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    :cond_5
    const/4 v8, 0x1

    if-ne v0, v8, :cond_6

    .line 490
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 491
    const-string/jumbo v8, "LocalVideoCache"

    const v9, 0x7f070360

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 492
    :cond_6
    const/4 v8, 0x2

    if-ne v0, v8, :cond_7

    .line 493
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 494
    const-string/jumbo v8, "LocalDocumentCache"

    const v9, 0x7f07035c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 495
    :cond_7
    const/4 v8, 0x3

    if-ne v0, v8, :cond_8

    .line 496
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 497
    const-string/jumbo v8, "LocalMusicCache"

    const v9, 0x7f07035e

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 498
    :cond_8
    const/4 v8, 0x4

    if-ne v0, v8, :cond_9

    .line 499
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 500
    const-string/jumbo v8, "LocalAudioCache"

    const v9, 0x7f070357

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 502
    :cond_9
    const/4 v8, 0x5

    if-ne v0, v8, :cond_a

    .line 503
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 504
    const-string/jumbo v8, "Themes"

    const v9, 0x7f070625

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 507
    :cond_a
    const/4 v8, 0x6

    if-ne v0, v8, :cond_4

    .line 508
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$000(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 509
    const-string/jumbo v8, "LocalCache"

    const v9, 0x7f070358

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 533
    :cond_b
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1200(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v8

    const/4 v9, 0x0

    aput-boolean v9, v8, v0

    goto/16 :goto_3

    .line 536
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "size":J
    :cond_c
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v2, v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 537
    .local v2, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    const-string/jumbo v8, "ClearMediaCache"

    const v9, 0x7f07017c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 539
    const-string/jumbo v8, "windowBackgroundWhiteRedText"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 540
    new-instance v8, Lorg/telegram/ui/CacheControlActivity$4$4;

    invoke-direct {v8, p0}, Lorg/telegram/ui/CacheControlActivity$4$4;-><init>(Lorg/telegram/ui/CacheControlActivity$4;)V

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    const/4 v8, -0x1

    const/16 v9, 0x30

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 555
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/CacheControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method