using System.Windows;
using System.Windows.Controls;
using System.Windows.Interactivity;


namespace Item_WPF.addin
{
    public class BindableSelectedItemBehavior : Behavior<TreeView>
    {
        #region SelectedItem Property

        public object SelectedItem
        {
            get { return this.GetValue(SelectedItemProperty); }
            set {
                this.SetValue(SelectedItemProperty, value); }
        }

        public static readonly DependencyProperty SelectedItemProperty =
            DependencyProperty.Register("SelectedItem", typeof(object), typeof(BindableSelectedItemBehavior), new UIPropertyMetadata(null, OnSelectedItemChanged));

        private static void OnSelectedItemChanged(DependencyObject sender, DependencyPropertyChangedEventArgs e)
        {
            var item = e.NewValue as TreeViewItem;

            item?.SetValue(TreeViewItem.IsSelectedProperty, true);
        }

        #endregion

        protected override void OnAttached()
        {
            base.OnAttached();

            this.AssociatedObject.SelectedItemChanged += this.OnTreeViewSelectedItemChanged;
        }

        protected override void OnDetaching()
        {
            base.OnDetaching();

            if (this.AssociatedObject != null)
            {
                this.AssociatedObject.SelectedItemChanged -= this.OnTreeViewSelectedItemChanged;
            }
        }

        private void OnTreeViewSelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            this.SelectedItem = e.NewValue;
        }
    }
}
