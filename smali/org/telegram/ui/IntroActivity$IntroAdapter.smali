.class Lorg/telegram/ui/IntroActivity$IntroAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntroAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/IntroActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/IntroActivity;Lorg/telegram/ui/IntroActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p2, "x1"    # Lorg/telegram/ui/IntroActivity$1;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lorg/telegram/ui/IntroActivity$IntroAdapter;-><init>(Lorg/telegram/ui/IntroActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 287
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x7

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030012

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0c0051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    .local v0, "headerTextView":Landroid/widget/TextView;
    const v3, 0x7f0c0052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 277
    .local v1, "messageTextView":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 279
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter;->this$0:Lorg/telegram/ui/IntroActivity;

    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$700(Lorg/telegram/ui/IntroActivity;)[I

    move-result-object v4

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/IntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter;->this$0:Lorg/telegram/ui/IntroActivity;

    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$800(Lorg/telegram/ui/IntroActivity;)[I

    move-result-object v4

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/IntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 312
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 293
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/IntroActivity;->access$900(Lorg/telegram/ui/IntroActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 294
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$IntroAdapter;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/IntroActivity;->access$900(Lorg/telegram/ui/IntroActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "child":Landroid/view/View;
    if-ne v0, p2, :cond_0

    .line 298
    const v3, -0xab8a62

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 294
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    const v3, -0x444445

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 303
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 324
    :cond_0
    return-void
.end method
