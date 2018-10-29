# Editing metadata records by batch

Since we&apos;re always trying to make it easier to enter data, you can complete more than one metadata record at once. For example, if 5 layers have the same history, you can select them and enter the history only once for all 5 layers. This feature is available for certain tabs.

Proceed as follows:

1.	In the inventory, select the metadata records to be documented.
2.	Click on the "Edit" button.
3.	Complete the appropriate fields, then click on "Save."

![Batch edition](/assets/inv_edit_batch_demo_history_comment.gif "Batch edition demonstration")

> Tip: check your selection carefully before launching a batch edition (see the additional information below).

## Fields that can be edited by batch

| Tab          | Batch  edition |
|:----------------|:---------:|
| Identification  | X         |
| History        | X         |
| Geography      | X         |
| Quality         | X         |
| Attributes       |           |
| TOS             | X         |
| Resources      | X         |
| Contacts        | X         |
| Advanced          | X         |
| Metadata      | X         |


## Operation and additional information

*  Batch edition does not display information already entered in the selected records. This explains why, for example, the Geography tab always displays an empty map.

* A batch edition overwrites the existing values for individual fields, and adds the values specified for multiple fields. For example, if you enter a summary and an associated resource, it will overwrite any summaries that may have been entered earlier, but will add that resource to the previous resources.

* A batch edition will only apply to modified fields. For example, if you add only a summary, the other fields will be left as is.

* If a record in the selection does not belong to you, you cannot perform a batch edition. Remember to filter on your workgroup.

* If the selection contains several resource types (such as vector data with services), the fields available for the batch edition will be limited to the smallest common denominator.
